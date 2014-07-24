jsoniq version "1.0";

module namespace accountant-converter = "http://xbrl.io/modules/bizql/profiles/accountant/converter";

(:~
 : <p>Flattens the row headers of the layout, leading to a rendering more familiar to
 : accountants.</p>
 :
 : @param the original layout model.
 : @return the layout model with row headers flattened.
 :)
declare function accountant-converter:flatten-row-headers($layout-model as object) as object
{
  copy $l := $layout-model
  modify
    for $table in $l.TableSet[]
    let $breakdown := $table.TableHeaders.y[]
    let $headers as array := $breakdown.GroupCells
    let $cells as array := $table.TableCells.Facts
    let $result := accountant-converter:flatten-headers({ Headers: $headers, Cells: $cells}, 1)
(:    return insert json { Debug: $result } into $breakdown:)
    return (replace value of json $breakdown.GroupCells with $result.Headers,
            replace value of json $table.TableCells.Facts with $result.Cells)
  return $l
};

declare %private function accountant-converter:flatten-headers(
    $headers-and-cells as object,
    $depth as integer) as object?
{
    switch(true)

    case size($headers-and-cells.Headers) le 1
    return copy $result := $headers-and-cells
           modify for $header in $result.Headers[][]
                  return (insert json { Depth: $depth } into $header,
                          delete json $header.CellSpan,
                          delete json $header.RollUp)
           return $result

    case size($headers-and-cells.Headers[[1]]) le 0
    return {
        Headers: null,
        Cells: $headers-and-cells.Cells
    }

    default return
        let $headers as array := $headers-and-cells.Headers
        let $cells as array := $headers-and-cells.Cells
        let $first-header as object := $headers[[1]][[1]]
        let $span as integer* := $first-header.CellSpan
        let $is-rightmost as boolean := size($headers) eq 1

        let $cells-to-the-right := accountant-converter:take-span([$headers[][position() gt 1]], $span)
        let $roll-up-position := (for $cell at $i in ($cells-to-the-right[[1]])[]
                                  where $cell.RollUp
                                  return $i, 0)[1]
        let $roll-up-span := for $cell in ($cells-to-the-right[[1]])[]
                             where $cell.RollUp
                             return $cell.CellSpan
        let $cells-to-the-right-no-rollup:= switch($roll-up-position)
                                            case 1 return accountant-converter:remove-span($cells-to-the-right, $roll-up-span)
                                            case $span return accountant-converter:take-span($cells-to-the-right, $span - $roll-up-span)
                                            case 0 return $cells-to-the-right
                                            default return []

        let $children-cells := [$cells[][position() le $span]]
        let $converted-children := accountant-converter:flatten-headers(
            {
                Headers: $cells-to-the-right-no-rollup,
                Cells: $children-cells
            },
            $depth + 1
        )

        let $bottom := accountant-converter:remove-span($headers, $span)
        let $bottom-cells := [$cells[][position() gt $span]]
        let $converted-bottom := accountant-converter:flatten-headers(
            {
                Headers: $bottom,
                Cells: $bottom-cells
            },
            $depth
        )

        (:
        let $is-roll-up := $roll-up-position ne 0 and $span ne $roll-up-span
        :)

        let $new-first-header as object := copy $n := $first-header
                                           modify (insert json {
                                                        Depth: $depth,
                                                        IsAbstract: size($cells-to-the-right[[1]]) gt 1 or not $cells-to-the-right[[1]][[1]].RollUp
                                                   } into $n,
                                                   delete json $n.CellSpan,
                                                   delete json $n.RollUp(:),
                                                   if($is-roll-up) then insert json { IsRollUp: true } into $n else ():))
                                           return $n
        
        return {
            (:OriginalCells: $cells,
            CellsToTheRight: $cells-to-the-right,
            RollUpPosition: $roll-up-position,
            RollUpSpan: $roll-up-span,
            CellsToTheRightNoRollUp: $cells-to-the-right-no-rollup,
            ChildrenCells: $children-cells,:)
            Headers: [
                [
                    if($roll-up-position = (0, 1))
                    then $new-first-header
                    else (),
                    $converted-children.Headers[][],
                    if($roll-up-position eq $span and $roll-up-position ne 1)
                    then $new-first-header
                    else (),
                    $converted-bottom.Headers[][]
                ]
            ],
            Cells: [
                if(not $is-rightmost and $roll-up-position eq 0)
                then [ (1 to size($cells[[1]])) ! null ]
                else (),
                $converted-children.Cells[],
                $converted-bottom.Cells[]
            ]
        }
};

declare %private function accountant-converter:take-span($headers as array, $span as integer) as array
{
    [
        for $column as array in $headers[]
        return [ for $n in 1 to size($column)
                 let $first-n-headers := $column[][position() le $n]
                 let $sum := sum($first-n-headers.CellSpan)
                 where $sum eq $span
                 return $first-n-headers
        ]
    ]
};

declare %private function accountant-converter:remove-span($headers as array, $span as integer) as array
{
    [
        for $column as array in $headers[]
        return [ for $n in 1 to size($column)
                 let $first-n-headers := $column[][position() le $n]
                 let $sum := sum($first-n-headers ! ($$.CellSpan, 1)[1])
                 where $sum eq $span
                 return $column[][position() gt $n]
        ]
    ]
};
