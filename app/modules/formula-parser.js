angular.module('formula-parser', []).factory('FormulaParser', function () { return (function() {
  /*
   * Generated by PEG.js 0.8.0.
   *
   * http://pegjs.majda.cz/
   */

  function peg$subclass(child, parent) {
    function ctor() { this.constructor = child; }
    ctor.prototype = parent.prototype;
    child.prototype = new ctor();
  }

  function SyntaxError(message, expected, found, offset, line, column) {
    this.message  = message;
    this.expected = expected;
    this.found    = found;
    this.offset   = offset;
    this.line     = line;
    this.column   = column;

    this.name     = "SyntaxError";
  }

  peg$subclass(SyntaxError, Error);

  function parse(input) {
    var options = arguments.length > 1 ? arguments[1] : {},

        peg$FAILED = {},

        peg$startRuleFunctions = { start: peg$parsestart },
        peg$startRuleFunction  = peg$parsestart,

        peg$c0 = peg$FAILED,
        peg$c1 = /^[+\-]/,
        peg$c2 = { type: "class", value: "[+\\-]", description: "[+\\-]" },
        peg$c3 = function(left, sign, right) {
              if (sign === "+")
              { return create("add", left, right); }
              else
              { return create("sub", left, right); }
            },
        peg$c4 = function(left, operator, right) { return create(operator, left, right); },
        peg$c5 = /^[*\/]/,
        peg$c6 = { type: "class", value: "[*\\/]", description: "[*\\/]" },
        peg$c7 = function(sign) { if (sign === "*"){ return "mul"; } else { return "div"; } },
        peg$c8 = /^[<>]/,
        peg$c9 = { type: "class", value: "[<>]", description: "[<>]" },
        peg$c10 = "=",
        peg$c11 = { type: "literal", value: "=", description: "\"=\"" },
        peg$c12 = function(double) { switch(double.join("")){
                                   case "<=": return "le";
                                   case ">=": return "ge";
                                 };
                               },
        peg$c13 = "<>",
        peg$c14 = { type: "literal", value: "<>", description: "\"<>\"" },
        peg$c15 = function() { return "ne"; },
        peg$c16 = /^[<=>]/,
        peg$c17 = { type: "class", value: "[<=>]", description: "[<=>]" },
        peg$c18 = function(single) { return single; },
        peg$c19 = "and",
        peg$c20 = { type: "literal", value: "and", description: "\"and\"" },
        peg$c21 = function() { return "and"; },
        peg$c22 = "or",
        peg$c23 = { type: "literal", value: "or", description: "\"or\"" },
        peg$c24 = function() { return "or"; },
        peg$c25 = "(",
        peg$c26 = { type: "literal", value: "(", description: "\"(\"" },
        peg$c27 = ")",
        peg$c28 = { type: "literal", value: ")", description: "\")\"" },
        peg$c29 = function(block) { return createOne("block", block); },
        peg$c30 = "$",
        peg$c31 = { type: "literal", value: "$", description: "\"$\"" },
        peg$c32 = /^[a-zA-Z]/,
        peg$c33 = { type: "class", value: "[a-zA-Z]", description: "[a-zA-Z]" },
        peg$c34 = [],
        peg$c35 = /^[a-zA-Z0-9]/,
        peg$c36 = { type: "class", value: "[a-zA-Z0-9]", description: "[a-zA-Z0-9]" },
        peg$c37 = ":",
        peg$c38 = { type: "literal", value: ":", description: "\":\"" },
        peg$c39 = /^[a-zA-Z0-9_]/,
        peg$c40 = { type: "class", value: "[a-zA-Z0-9_]", description: "[a-zA-Z0-9_]" },
        peg$c41 = function(name) { return createVar(name[1] + name[2].join("") + name[3] + name[4].join("")); },
        peg$c42 = { type: "other", description: "integer" },
        peg$c43 = /^[0-9.]/,
        peg$c44 = { type: "class", value: "[0-9.]", description: "[0-9.]" },
        peg$c45 = function(digits) { return createAtomic(parseFloat(digits.join(""), 10)); },
        peg$c46 = "exists",
        peg$c47 = { type: "literal", value: "exists", description: "\"exists\"" },
        peg$c48 = function(param) { return createFun("exists", param); },
        peg$c49 = null,
        peg$c50 = function(param) { return param; },
        peg$c51 = /^[ \t\r\n]/,
        peg$c52 = { type: "class", value: "[ \\t\\r\\n]", description: "[ \\t\\r\\n]" },
        peg$c53 = ",",
        peg$c54 = { type: "literal", value: ",", description: "\",\"" },

        peg$currPos          = 0,
        peg$reportedPos      = 0,
        peg$cachedPos        = 0,
        peg$cachedPosDetails = { line: 1, column: 1, seenCR: false },
        peg$maxFailPos       = 0,
        peg$maxFailExpected  = [],
        peg$silentFails      = 0,

        peg$result;

    if ("startRule" in options) {
      if (!(options.startRule in peg$startRuleFunctions)) {
        throw new Error("Can't start parsing from rule \"" + options.startRule + "\".");
      }

      peg$startRuleFunction = peg$startRuleFunctions[options.startRule];
    }

    function text() {
      return input.substring(peg$reportedPos, peg$currPos);
    }

    function offset() {
      return peg$reportedPos;
    }

    function line() {
      return peg$computePosDetails(peg$reportedPos).line;
    }

    function column() {
      return peg$computePosDetails(peg$reportedPos).column;
    }

    function expected(description) {
      throw peg$buildException(
        null,
        [{ type: "other", description: description }],
        peg$reportedPos
      );
    }

    function error(message) {
      throw peg$buildException(message, null, peg$reportedPos);
    }

    function peg$computePosDetails(pos) {
      function advance(details, startPos, endPos) {
        var p, ch;

        for (p = startPos; p < endPos; p++) {
          ch = input.charAt(p);
          if (ch === "\n") {
            if (!details.seenCR) { details.line++; }
            details.column = 1;
            details.seenCR = false;
          } else if (ch === "\r" || ch === "\u2028" || ch === "\u2029") {
            details.line++;
            details.column = 1;
            details.seenCR = true;
          } else {
            details.column++;
            details.seenCR = false;
          }
        }
      }

      if (peg$cachedPos !== pos) {
        if (peg$cachedPos > pos) {
          peg$cachedPos = 0;
          peg$cachedPosDetails = { line: 1, column: 1, seenCR: false };
        }
        advance(peg$cachedPosDetails, peg$cachedPos, pos);
        peg$cachedPos = pos;
      }

      return peg$cachedPosDetails;
    }

    function peg$fail(expected) {
      if (peg$currPos < peg$maxFailPos) { return; }

      if (peg$currPos > peg$maxFailPos) {
        peg$maxFailPos = peg$currPos;
        peg$maxFailExpected = [];
      }

      peg$maxFailExpected.push(expected);
    }

    function peg$buildException(message, expected, pos) {
      function cleanupExpected(expected) {
        var i = 1;

        expected.sort(function(a, b) {
          if (a.description < b.description) {
            return -1;
          } else if (a.description > b.description) {
            return 1;
          } else {
            return 0;
          }
        });

        while (i < expected.length) {
          if (expected[i - 1] === expected[i]) {
            expected.splice(i, 1);
          } else {
            i++;
          }
        }
      }

      function buildMessage(expected, found) {
        function stringEscape(s) {
          function hex(ch) { return ch.charCodeAt(0).toString(16).toUpperCase(); }

          return s
            .replace(/\\/g,   '\\\\')
            .replace(/"/g,    '\\"')
            .replace(/\x08/g, '\\b')
            .replace(/\t/g,   '\\t')
            .replace(/\n/g,   '\\n')
            .replace(/\f/g,   '\\f')
            .replace(/\r/g,   '\\r')
            .replace(/[\x00-\x07\x0B\x0E\x0F]/g, function(ch) { return '\\x0' + hex(ch); })
            .replace(/[\x10-\x1F\x80-\xFF]/g,    function(ch) { return '\\x'  + hex(ch); })
            .replace(/[\u0180-\u0FFF]/g,         function(ch) { return '\\u0' + hex(ch); })
            .replace(/[\u1080-\uFFFF]/g,         function(ch) { return '\\u'  + hex(ch); });
        }

        var expectedDescs = new Array(expected.length),
            expectedDesc, foundDesc, i;

        for (i = 0; i < expected.length; i++) {
          expectedDescs[i] = expected[i].description;
        }

        expectedDesc = expected.length > 1
          ? expectedDescs.slice(0, -1).join(", ")
              + " or "
              + expectedDescs[expected.length - 1]
          : expectedDescs[0];

        foundDesc = found ? "\"" + stringEscape(found) + "\"" : "end of input";

        return "Expected " + expectedDesc + " but " + foundDesc + " found.";
      }

      var posDetails = peg$computePosDetails(pos),
          found      = pos < input.length ? input.charAt(pos) : null;

      if (expected !== null) {
        cleanupExpected(expected);
      }

      return new SyntaxError(
        message !== null ? message : buildMessage(expected, found),
        expected,
        found,
        pos,
        posDetails.line,
        posDetails.column
      );
    }

    function peg$parsestart() {
      var s0;

      s0 = peg$parsesubadd();

      return s0;
    }

    function peg$parsesubadd() {
      var s0, s1, s2, s3, s4, s5, s6, s7;

      s0 = peg$currPos;
      s1 = peg$parse_();
      if (s1 !== peg$FAILED) {
        s2 = peg$parsemuldivcomplog();
        if (s2 !== peg$FAILED) {
          s3 = peg$parse_();
          if (s3 !== peg$FAILED) {
            if (peg$c1.test(input.charAt(peg$currPos))) {
              s4 = input.charAt(peg$currPos);
              peg$currPos++;
            } else {
              s4 = peg$FAILED;
              if (peg$silentFails === 0) { peg$fail(peg$c2); }
            }
            if (s4 !== peg$FAILED) {
              s5 = peg$parse_();
              if (s5 !== peg$FAILED) {
                s6 = peg$parsesubadd();
                if (s6 !== peg$FAILED) {
                  s7 = peg$parse_();
                  if (s7 !== peg$FAILED) {
                    peg$reportedPos = s0;
                    s1 = peg$c3(s2, s4, s6);
                    s0 = s1;
                  } else {
                    peg$currPos = s0;
                    s0 = peg$c0;
                  }
                } else {
                  peg$currPos = s0;
                  s0 = peg$c0;
                }
              } else {
                peg$currPos = s0;
                s0 = peg$c0;
              }
            } else {
              peg$currPos = s0;
              s0 = peg$c0;
            }
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }
      if (s0 === peg$FAILED) {
        s0 = peg$parsemuldivcomplog();
      }

      return s0;
    }

    function peg$parsemuldivcomplog() {
      var s0, s1, s2, s3, s4, s5, s6, s7;

      s0 = peg$currPos;
      s1 = peg$parse_();
      if (s1 !== peg$FAILED) {
        s2 = peg$parseprimary();
        if (s2 !== peg$FAILED) {
          s3 = peg$parse_();
          if (s3 !== peg$FAILED) {
            s4 = peg$parseop_muldiv();
            if (s4 === peg$FAILED) {
              s4 = peg$parseop_comparator();
              if (s4 === peg$FAILED) {
                s4 = peg$parseop_logical();
              }
            }
            if (s4 !== peg$FAILED) {
              s5 = peg$parse_();
              if (s5 !== peg$FAILED) {
                s6 = peg$parsemuldivcomplog();
                if (s6 !== peg$FAILED) {
                  s7 = peg$parse_();
                  if (s7 !== peg$FAILED) {
                    peg$reportedPos = s0;
                    s1 = peg$c4(s2, s4, s6);
                    s0 = s1;
                  } else {
                    peg$currPos = s0;
                    s0 = peg$c0;
                  }
                } else {
                  peg$currPos = s0;
                  s0 = peg$c0;
                }
              } else {
                peg$currPos = s0;
                s0 = peg$c0;
              }
            } else {
              peg$currPos = s0;
              s0 = peg$c0;
            }
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }
      if (s0 === peg$FAILED) {
        s0 = peg$parseprimary();
      }

      return s0;
    }

    function peg$parseop_muldiv() {
      var s0, s1;

      s0 = peg$currPos;
      if (peg$c5.test(input.charAt(peg$currPos))) {
        s1 = input.charAt(peg$currPos);
        peg$currPos++;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c6); }
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c7(s1);
      }
      s0 = s1;

      return s0;
    }

    function peg$parseop_comparator() {
      var s0;

      s0 = peg$parseop_comparator_le_ge();
      if (s0 === peg$FAILED) {
        s0 = peg$parseop_comparator_not_equal();
        if (s0 === peg$FAILED) {
          s0 = peg$parseop_comparator_single();
        }
      }

      return s0;
    }

    function peg$parseop_comparator_le_ge() {
      var s0, s1, s2, s3;

      s0 = peg$currPos;
      s1 = peg$currPos;
      if (peg$c8.test(input.charAt(peg$currPos))) {
        s2 = input.charAt(peg$currPos);
        peg$currPos++;
      } else {
        s2 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c9); }
      }
      if (s2 !== peg$FAILED) {
        if (input.charCodeAt(peg$currPos) === 61) {
          s3 = peg$c10;
          peg$currPos++;
        } else {
          s3 = peg$FAILED;
          if (peg$silentFails === 0) { peg$fail(peg$c11); }
        }
        if (s3 !== peg$FAILED) {
          s2 = [s2, s3];
          s1 = s2;
        } else {
          peg$currPos = s1;
          s1 = peg$c0;
        }
      } else {
        peg$currPos = s1;
        s1 = peg$c0;
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c12(s1);
      }
      s0 = s1;

      return s0;
    }

    function peg$parseop_comparator_not_equal() {
      var s0, s1;

      s0 = peg$currPos;
      if (input.substr(peg$currPos, 2) === peg$c13) {
        s1 = peg$c13;
        peg$currPos += 2;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c14); }
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c15();
      }
      s0 = s1;

      return s0;
    }

    function peg$parseop_comparator_single() {
      var s0, s1;

      s0 = peg$currPos;
      if (peg$c16.test(input.charAt(peg$currPos))) {
        s1 = input.charAt(peg$currPos);
        peg$currPos++;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c17); }
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c18(s1);
      }
      s0 = s1;

      return s0;
    }

    function peg$parseop_logical() {
      var s0;

      s0 = peg$parseop_log_and();
      if (s0 === peg$FAILED) {
        s0 = peg$parseop_log_or();
      }

      return s0;
    }

    function peg$parseop_log_and() {
      var s0, s1;

      s0 = peg$currPos;
      if (input.substr(peg$currPos, 3) === peg$c19) {
        s1 = peg$c19;
        peg$currPos += 3;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c20); }
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c21();
      }
      s0 = s1;

      return s0;
    }

    function peg$parseop_log_or() {
      var s0, s1;

      s0 = peg$currPos;
      if (input.substr(peg$currPos, 2) === peg$c22) {
        s1 = peg$c22;
        peg$currPos += 2;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c23); }
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c24();
      }
      s0 = s1;

      return s0;
    }

    function peg$parseprimary() {
      var s0;

      s0 = peg$parseinteger();
      if (s0 === peg$FAILED) {
        s0 = peg$parseblock();
        if (s0 === peg$FAILED) {
          s0 = peg$parsevariable();
          if (s0 === peg$FAILED) {
            s0 = peg$parsefun_exists();
          }
        }
      }

      return s0;
    }

    function peg$parseblock() {
      var s0, s1, s2, s3, s4, s5;

      s0 = peg$currPos;
      if (input.charCodeAt(peg$currPos) === 40) {
        s1 = peg$c25;
        peg$currPos++;
      } else {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c26); }
      }
      if (s1 !== peg$FAILED) {
        s2 = peg$parse_();
        if (s2 !== peg$FAILED) {
          s3 = peg$parsesubadd();
          if (s3 !== peg$FAILED) {
            s4 = peg$parse_();
            if (s4 !== peg$FAILED) {
              if (input.charCodeAt(peg$currPos) === 41) {
                s5 = peg$c27;
                peg$currPos++;
              } else {
                s5 = peg$FAILED;
                if (peg$silentFails === 0) { peg$fail(peg$c28); }
              }
              if (s5 !== peg$FAILED) {
                peg$reportedPos = s0;
                s1 = peg$c29(s3);
                s0 = s1;
              } else {
                peg$currPos = s0;
                s0 = peg$c0;
              }
            } else {
              peg$currPos = s0;
              s0 = peg$c0;
            }
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }

      return s0;
    }

    function peg$parsevariable() {
      var s0, s1, s2, s3, s4, s5, s6, s7, s8;

      s0 = peg$currPos;
      s1 = peg$parse_();
      if (s1 !== peg$FAILED) {
        s2 = peg$currPos;
        if (input.charCodeAt(peg$currPos) === 36) {
          s3 = peg$c30;
          peg$currPos++;
        } else {
          s3 = peg$FAILED;
          if (peg$silentFails === 0) { peg$fail(peg$c31); }
        }
        if (s3 !== peg$FAILED) {
          if (peg$c32.test(input.charAt(peg$currPos))) {
            s4 = input.charAt(peg$currPos);
            peg$currPos++;
          } else {
            s4 = peg$FAILED;
            if (peg$silentFails === 0) { peg$fail(peg$c33); }
          }
          if (s4 !== peg$FAILED) {
            s5 = [];
            if (peg$c35.test(input.charAt(peg$currPos))) {
              s6 = input.charAt(peg$currPos);
              peg$currPos++;
            } else {
              s6 = peg$FAILED;
              if (peg$silentFails === 0) { peg$fail(peg$c36); }
            }
            while (s6 !== peg$FAILED) {
              s5.push(s6);
              if (peg$c35.test(input.charAt(peg$currPos))) {
                s6 = input.charAt(peg$currPos);
                peg$currPos++;
              } else {
                s6 = peg$FAILED;
                if (peg$silentFails === 0) { peg$fail(peg$c36); }
              }
            }
            if (s5 !== peg$FAILED) {
              if (input.charCodeAt(peg$currPos) === 58) {
                s6 = peg$c37;
                peg$currPos++;
              } else {
                s6 = peg$FAILED;
                if (peg$silentFails === 0) { peg$fail(peg$c38); }
              }
              if (s6 !== peg$FAILED) {
                s7 = [];
                if (peg$c39.test(input.charAt(peg$currPos))) {
                  s8 = input.charAt(peg$currPos);
                  peg$currPos++;
                } else {
                  s8 = peg$FAILED;
                  if (peg$silentFails === 0) { peg$fail(peg$c40); }
                }
                if (s8 !== peg$FAILED) {
                  while (s8 !== peg$FAILED) {
                    s7.push(s8);
                    if (peg$c39.test(input.charAt(peg$currPos))) {
                      s8 = input.charAt(peg$currPos);
                      peg$currPos++;
                    } else {
                      s8 = peg$FAILED;
                      if (peg$silentFails === 0) { peg$fail(peg$c40); }
                    }
                  }
                } else {
                  s7 = peg$c0;
                }
                if (s7 !== peg$FAILED) {
                  s3 = [s3, s4, s5, s6, s7];
                  s2 = s3;
                } else {
                  peg$currPos = s2;
                  s2 = peg$c0;
                }
              } else {
                peg$currPos = s2;
                s2 = peg$c0;
              }
            } else {
              peg$currPos = s2;
              s2 = peg$c0;
            }
          } else {
            peg$currPos = s2;
            s2 = peg$c0;
          }
        } else {
          peg$currPos = s2;
          s2 = peg$c0;
        }
        if (s2 !== peg$FAILED) {
          s3 = peg$parse_();
          if (s3 !== peg$FAILED) {
            peg$reportedPos = s0;
            s1 = peg$c41(s2);
            s0 = s1;
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }

      return s0;
    }

    function peg$parseinteger() {
      var s0, s1, s2;

      peg$silentFails++;
      s0 = peg$currPos;
      s1 = [];
      if (peg$c43.test(input.charAt(peg$currPos))) {
        s2 = input.charAt(peg$currPos);
        peg$currPos++;
      } else {
        s2 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c44); }
      }
      if (s2 !== peg$FAILED) {
        while (s2 !== peg$FAILED) {
          s1.push(s2);
          if (peg$c43.test(input.charAt(peg$currPos))) {
            s2 = input.charAt(peg$currPos);
            peg$currPos++;
          } else {
            s2 = peg$FAILED;
            if (peg$silentFails === 0) { peg$fail(peg$c44); }
          }
        }
      } else {
        s1 = peg$c0;
      }
      if (s1 !== peg$FAILED) {
        peg$reportedPos = s0;
        s1 = peg$c45(s1);
      }
      s0 = s1;
      peg$silentFails--;
      if (s0 === peg$FAILED) {
        s1 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c42); }
      }

      return s0;
    }

    function peg$parsefun_exists() {
      var s0, s1, s2, s3, s4, s5, s6, s7, s8;

      s0 = peg$currPos;
      s1 = peg$parse_();
      if (s1 !== peg$FAILED) {
        if (input.substr(peg$currPos, 6) === peg$c46) {
          s2 = peg$c46;
          peg$currPos += 6;
        } else {
          s2 = peg$FAILED;
          if (peg$silentFails === 0) { peg$fail(peg$c47); }
        }
        if (s2 !== peg$FAILED) {
          s3 = peg$parse_();
          if (s3 !== peg$FAILED) {
            if (input.charCodeAt(peg$currPos) === 40) {
              s4 = peg$c25;
              peg$currPos++;
            } else {
              s4 = peg$FAILED;
              if (peg$silentFails === 0) { peg$fail(peg$c26); }
            }
            if (s4 !== peg$FAILED) {
              s5 = peg$parse_();
              if (s5 !== peg$FAILED) {
                s6 = peg$parseparameter();
                if (s6 !== peg$FAILED) {
                  s7 = peg$parse_();
                  if (s7 !== peg$FAILED) {
                    if (input.charCodeAt(peg$currPos) === 41) {
                      s8 = peg$c27;
                      peg$currPos++;
                    } else {
                      s8 = peg$FAILED;
                      if (peg$silentFails === 0) { peg$fail(peg$c28); }
                    }
                    if (s8 !== peg$FAILED) {
                      peg$reportedPos = s0;
                      s1 = peg$c48(s6);
                      s0 = s1;
                    } else {
                      peg$currPos = s0;
                      s0 = peg$c0;
                    }
                  } else {
                    peg$currPos = s0;
                    s0 = peg$c0;
                  }
                } else {
                  peg$currPos = s0;
                  s0 = peg$c0;
                }
              } else {
                peg$currPos = s0;
                s0 = peg$c0;
              }
            } else {
              peg$currPos = s0;
              s0 = peg$c0;
            }
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }

      return s0;
    }

    function peg$parseparameter() {
      var s0, s1, s2;

      s0 = peg$currPos;
      s1 = peg$parsecomma();
      if (s1 === peg$FAILED) {
        s1 = peg$c49;
      }
      if (s1 !== peg$FAILED) {
        s2 = peg$parsesubadd();
        if (s2 !== peg$FAILED) {
          peg$reportedPos = s0;
          s1 = peg$c50(s2);
          s0 = s1;
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }

      return s0;
    }

    function peg$parsews() {
      var s0;

      if (peg$c51.test(input.charAt(peg$currPos))) {
        s0 = input.charAt(peg$currPos);
        peg$currPos++;
      } else {
        s0 = peg$FAILED;
        if (peg$silentFails === 0) { peg$fail(peg$c52); }
      }

      return s0;
    }

    function peg$parse_() {
      var s0, s1;

      s0 = [];
      s1 = peg$parsews();
      while (s1 !== peg$FAILED) {
        s0.push(s1);
        s1 = peg$parsews();
      }

      return s0;
    }

    function peg$parsecomma() {
      var s0, s1, s2, s3;

      s0 = peg$currPos;
      s1 = peg$parse_();
      if (s1 !== peg$FAILED) {
        if (input.charCodeAt(peg$currPos) === 44) {
          s2 = peg$c53;
          peg$currPos++;
        } else {
          s2 = peg$FAILED;
          if (peg$silentFails === 0) { peg$fail(peg$c54); }
        }
        if (s2 !== peg$FAILED) {
          s3 = peg$parse_();
          if (s3 !== peg$FAILED) {
            s1 = [s1, s2, s3];
            s0 = s1;
          } else {
            peg$currPos = s0;
            s0 = peg$c0;
          }
        } else {
          peg$currPos = s0;
          s0 = peg$c0;
        }
      } else {
        peg$currPos = s0;
        s0 = peg$c0;
      }

      return s0;
    }


      function create(type, left, right) {
        return {Type: type, Children: [left,right]};
      }

      function createOne(type, one) {
        return {Type: type, Children: [one]};
      }

      function createAtomic(val) {
        return {Type: "atomic", Value: val};
      }


      function createVar(name) {
        return {Type: "variable", ConceptName: name};
      }


      function createFun(name, params) {
        return {Type: "function", Name: name, Params: [params]};
      }



    peg$result = peg$startRuleFunction();

    if (peg$result !== peg$FAILED && peg$currPos === input.length) {
      return peg$result;
    } else {
      if (peg$result !== peg$FAILED && peg$currPos < input.length) {
        peg$fail({ type: "end", description: "end of input" });
      }

      throw peg$buildException(null, peg$maxFailExpected, peg$maxFailPos);
    }
  }

  return {
    SyntaxError: SyntaxError,
    parse:       parse
  };
})()});