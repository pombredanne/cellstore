{
    "apiVersion": "1.0",
    "swaggerVersion": "1.2",
    "basePath": "http://portal.28.io/v1",
    "resourcePath": "/_queries",
    "produces": [
        "application/json"
    ],
    "description": "<p>These resources can be used to manage and execute queries. The endpoint of these resources is based on your project name. For instance, if your 28.io project is named <code>myproject</code>, your endpoint for this API will be: <code>http://myproject.28.io/v1/_queries</code>.</p>",
    "apis": [
        {
            "path": "/_queries/{visibility}",
            "description": "Query Listing",
            "operations": [
                {
                    "method": "GET",
                    "summary": "Lists public and/or private queries",
                    "notes": "<p>This method retrieves a list of queries that belong to a project. To only list public (resp. private) queries set the <code>visibility</code> parameter to <code>public</code> (resp. <code>private</code>). To list both public and private queries, omit the <code>visibility</code> parameter.</p>",
                    "type": "QueryListing",
                    "nickname": "listQueries",
                    "parameters": [
                        {
                            "name": "visibility",
                            "description": "The query visibility.",
                            "required": false,
                            "type": "string",
                            "enum": [
                                "public",
                                "private"
                            ],
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "Returns query listing.",
                            "responseModel": "QueryListing"
                        }
                    ],
                    "examples": [
                        {
                            "title": "Listing all queries",
                            "description": "The following request retrieves the list of all queries associated with the project named <code>myproject</code>.",
                            "request": "curl -X GET \"http://myproject.28.io/v1/_queries?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n    \"public\": [{\n        \"href\": \"/v1/_queries/public/query1.jq\",\n        \"lastModified\": \"2013-10-31T12:12:24Z\"\n    }, {\n        \"href\": \"/v1/_queries/public/query2.jq\",\n        \"lastModified\": \"2013-10-31T12:12:24Z\"\n    }],\n    \"private\": [{\n        \"href\": \"/v1/_queries/private/query.jq\",\n        \"lastModified\": \"2013-10-31T12:12:24Z\"\n    }]\n}"
                        }
                    ]
                }
            ]
        },
        {
            "path": "/_queries/{query-path}{format}",
            "description": "Query Execution",
            "operations": [
                {
                    "method": "GET",
                    "summary": "Executes a non-side-effecting query",
                    "notes": "<p>This method executes a non-side-effecting query and serialize its results using a chosen serialization method. The following serialization methods are available: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid</a>, <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#text-output\" target=\"_blank\">Text</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML</a>, and <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML</a>.</p><p>It is also possible to use the 28.io serialization method. The 28.io serialization produces a JSON object with metadata about the items produced as query result. This serialization method format is unstable and will be documented as soon we are ready to commit to backward compatibility.</p><div class=\"callout-info\"><p>The HTTP response of this method is using streaming. Therefore, if an error occurs after part of the response has already been sent to the client, the response status code will be 200. In this case, the streaming of the HTTP response will stop and the following string will be sent <code>\"\\n\\n\\nAn error occurred during the processing of the request.\\n\"</code> followed by the error description. To always get a well-formed JSON error response, and the expected HTTP error status code, it is possible to issue the same request using POST. Note however that, in this case, the HTTP response will not stream.</p></div><h4>Query Serialization</h4><p>The serialization method can be chosen by means of the <code>Accept</code> header or by specifying the <code>format</code> parameter. In case no serialization method is specified, JSON-XML-hybrid is used.</p><p>Specifically, the serialization method is chosen as follows: <ol><li>if an <code>Accept</code> header is specified and if it contains at least one supported mime-type/charset pair, the serialization method corresponding to the most preferred one (according to the <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1\" target=\"_blank\">\"q\" modifier</a> first and the order in which the mime-types are specified second) among those supported is chosen;</li><li>otherwise, if a <code>format</code> parameter is specified, the corresponding serialization method is chosen;</li><li>otherwise, JSON-XML-hybrid is used.</li></ol></p><p>If the Accept header is specified and it contains at least one supported mime-type, the preferred supported mime-type is used to choose the serialization method, according to the following mapping: <ul><li><code>application/mixed-json-xml</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid Serialization</a></li><li><code>application/json</code> or any mime-type which ends with <code>+json</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON Serialization</a></li><li><code>text/xml</code>, <code>application/xml</code> or any mime-type which ends with <code>+xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML Serialization</a></li><li><code>text/html</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML Serialization</a></li><li><code>application/xhtml+xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML Serialization</a></li><li><code>application/28io+json</code>: 28.io Serialization (format definition unstable)</li><li><code>* / *</code>: the <code>Accept</code> header is ignored and the format parameter, if specified, is used to choose the serialization method.</li></ul><p class=\"callout-warning\">Any mime-type not matching one of the conditions listed above is not supported by this resource.</p></p><p>If the format parameter has been specified and is used to choose the serialization method, the following mapping is used: <ul><li><code>.mixed</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid Serialization</a></li><li><code>.json</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON Serialization</a></li><li><code>.xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML Serialization</a></li><li><code>.text</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#text-output\" target=\"_blank\">Text Serialization</a></li><li><code>.html</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML Serialization</a></li><li><code>.xhtml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML Serialization</a></li><li><code>.28io-json</code>: 28.io Serialization (format definition unstable).</li></ul></p><h4>Response Content-Type and Encoding</h4><p>The content-type of the response is determined as follows:<ol><li>If the serialization method has been chosen depending on one of the mime-types specified in the <code>Accept</code> header, the following criterion are used: <ul><li>if the used mime-type is <code>* / *</code> or <code>application/mixed-json-xml</code> then the response content type depends on the first item of the result. If it is an XML node the response content-type will be <code>application/xml</code>, otherwise <code>application/json</code></li><li>for any other mime-type, the same mime-type is used in the response.</li></ul> In case no charset has been specified for that mime-type in the <code>Accept</code> header, <code>UTF-8</code> is used. Otherwise, the specified charset is used.</li><li>If the serialization method has been chosen due to the format parameter or the query file extension the content-type of the response is chosen as follows: <ul><li>JSON-XML-hybrid serialization: the response content type depends on the first item of the result. If it is an XML node the response content-type will be <code>application/xml;charset=UTF-8</code>, otherwise <code>application/json;charset=UTF-8</code></li><li>JSON serialization: <code>application/json;charset=UTF-8</code></li><li>XML serialization: <code>application/xml;charset=UTF-8</code></li><li>Text serialization: <code>text/plain;charset=UTF-8</code></li><li>HTML serialization: <code>text/html;charset=UTF-8</code></li><li>XHTML serialization: <code>application/xhtml+xml;charset=UTF-8</code></li><li>28.io serialization: <code>application/28io+json;charset=UTF-8</code></li></ul></li></ol></p><p class=\"callout-warning\">If any of the items produced by the query cannot be serialized using the chosen serialization method a <code>500 internal server error</code> will be raised.</p>",
                    "type": "QueryResult28IO",
                    "produces": [
                        "*/*",
                        "application/xml",
                        "application/xhtml+xml",
                        "text/html",
                        "text/plain",
                        "application/json",
                        "application/28.io+json",
                        "application/mixed-json-xml"
                    ],
                    "nickname": "executeSimpleQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with <code>public</code> or <code>private</code> and can contain slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "format",
                            "description": "The serialization method to use for the results of the executed query. When choosing a serialization method, this parameter has a lower priority than the <code>Accept</code> header.",
                            "required": false,
                            "type": "string",
                            "enum": [
                                ".mixed",
                                ".json",
                                ".xml",
                                ".text",
                                ".html",
                                ".xhtml",
                                ".28io-json"
                            ],
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": false,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 204,
                            "message": "The query produced no results.",
                            "responseModel": "none"
                        },
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 404,
                            "message": "The specified query cannot be found.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 405,
                            "message": "A side-effecting query cannot be invoked using GET.",
                            "responseModel": "Error"
                        },                        
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "Returns query result."
                        }
                    ],
                    "examples": [
                        {
                            "title": "Executing a non-side-effecting query",
                            "description": "The following request executes a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X GET \"http://myproject.28.io/v1/_queries/public/hello_world.jq?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n\"Hello World\""
                        }
                    ]
                },
                {
                    "method": "POST",
                    "summary": "Executes a query",
                    "notes": "<p>This method executes a query and serialize its results using a chosen serialization method. The following serialization methods are available: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid</a>, <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#text-output\" target=\"_blank\">Text</a>, <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML</a>, and <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML</a>.</p><p>It is also possible to use the 28.io serialization method. The 28.io serialization produces a JSON object with metadata about the items produced as query result. This serialization method format is unstable and will be documented as soon we are ready to commit to backward compatibility.</p><h4>Query Serialization</h4><p>If the query specifies the response content-type or encoding using the <a href=\"http://28.io/documentation/latest/modules/http/response?anchor=content-type-1\">HTTP response module</a> and the query execution completes without raising errors, its serialization method cannot be overridden through this api. Similarly, if the query <a href=\"http://28.io/documentation/latest/modules/http/response?anchor=status-code-1\">specifies a response status code</a> and the query execution completes without raising errors, the HTTP status code set by the query is systematically used as the response status code.</p><p>If the query does not specify a response content-type, the serialization method can be chosen by means of the <code>Accept</code> header or by specifying the <code>format</code> parameter. In case the query does not specify a response content-type and no serialization method is specified, JSON-XML-hybrid is used.</p><p>Specifically, the serialization method is chosen as follows: <ol><li>if an <code>Accept</code> header is specified and if it contains at least one supported mime-type/charset pair, the serialization method corresponding to the most preferred one (according to the <a href=\"http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.1\" target=\"_blank\">\"q\" modifier</a> first and the order in which the mime-types are specified second) among those supported is chosen;</li><li>otherwise, if a <code>format</code> parameter is specified, the corresponding serialization method is chosen;</li><li>otherwise, JSON-XML-hybrid is used.</li></ol></p><p>If the Accept header is specified and it contains at least one supported mime-type, the preferred supported mime-type is used to choose the serialization method, according to the following mapping: <ul><li><code>application/mixed-json-xml</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid Serialization</a></li><li><code>application/json</code> or any mime-type which ends with <code>+json</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON Serialization</a></li><li><code>text/xml</code>, <code>application/xml</code> or any mime-type which ends with <code>+xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML Serialization</a></li><li><code>text/html</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML Serialization</a></li><li><code>application/xhtml+xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML Serialization</a></li><li><code>application/28io+json</code>: 28.io Serialization (format definition unstable)</li><li><code>* / *</code>: the <code>Accept</code> header is ignored and the format parameter, if specified, is used to choose the serialization method.</li></ul><p class=\"callout-warning\">Any mime-type not matching one of the conditions listed above is not supported by this resource.</p></p><p>If the format parameter is used to choose the serialization method, the following mapping is used: <ul><li><code>.mixed</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON-XML-hybrid Serialization</a></li><li><code>.json</code>: <a href=\"http://jsoniq.org/docs/JSONiqExtensionToXQuery/html-single/#section-json-serialization\" target=\"_blank\">JSON Serialization</a></li><li><code>.xml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xml-output\" target=\"_blank\">XML Serialization</a></li><li><code>.text</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#text-output\" target=\"_blank\">Text Serialization</a></li><li><code>.html</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#html-output\" target=\"_blank\">HTML Serialization</a></li><li><code>.xhtml</code>: <a href=\"http://www.w3.org/TR/xslt-xquery-serialization/#xhtml-output\" target=\"_blank\">XHTML Serialization</a></li><li><code>.28io-json</code>: 28.io Serialization (format definition unstable).</li></ul></p><h4>Response Content-Type and Encoding</h4><p>The content-type of the response is determined as follows: <ol><li>If the query has set the response content-type, it will be used in the response. If this content-type, however, is not acceptable according to the <code>Accept</code> header specified in the request, an error will be raised and the response status code will be set to <code>406</code>. Note that <code>application/mixed-json-xml</code> is treated as <code>* / *</code> when considering if the content-type set by the query is accepted or not.</li><li>If the serialization method has been chosen depending on one of the mime-types specified in the <code>Accept</code> header, the following criterion are used: <ul><li>if the used mime-type is <code>* / *</code> or <code>application/mixed-json-xml</code> then the response content type depends on the first item of the result. If it is an XML node the response content-type will be <code>application/xml</code>, otherwise <code>application/json</code></li><li>for any other mime-type, the same mime-type is used in the response.</li></ul> In case no charset has been set by the query or specified for that mime-type in the <code>Accept</code> header, <code>UTF-8</code> is used.</li><li>If the serialization method has been chosen due to the format parameter or the query file extension the content-type of the response is chosen as follows: <ul><li>JSON-XML-hybrid serialization: the response content type depends on the first item of the result. If it is an XML node the response content-type will be <code>application/xml;charset=UTF-8</code>, otherwise <code>application/json;charset=UTF-8</code></li><li>JSON serialization: <code>application/json;charset=UTF-8</code></li><li>XML serialization: <code>application/xml;charset=UTF-8</code></li><li>Text serialization: <code>text/plain;charset=UTF-8</code></li><li>HTML serialization: <code>text/html;charset=UTF-8</code></li><li>XHTML serialization: <code>application/xhtml+xml;charset=UTF-8</code></li><li>28.io serialization: <code>application/28io+json;charset=UTF-8</code></li></ul></li></ol></p><p class=\"callout-warning\">If the items produced by the query cannot be serialized using the chosen serialization method a <code>500 internal server error</code> will be raised.</p><h4>Asynchronous execution</h4><p>To execute the query asynchronously, you can specify the <code>async</code> parameter. The asynchronously executed query and its results can then be managed through the <code>_jobs</code> API using the URL returned in the location header. Optionally you can specify the output collection throught the <code>output-collection</code> parameter. When running a query asynchronously any serialization options will be ignored. Serialization options can be specified when retrieving the query results through the <code>_jobs</code> API.</p>",
                    "type": "QueryResult28IO",
                    "produces": [
                        "*/*",
                        "application/xml",
                        "application/xhtml+xml",
                        "text/html",
                        "text/plain",
                        "application/json",
                        "application/28.io+json",
                        "application/mixed-json-xml"
                    ],
                    "nickname": "executeQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with <code>public</code> or <code>private</code> and can contain slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "format",
                            "description": "The serialization method to use for the results of the executed query. When choosing a serialization method, this parameter has a lower priority than the <code>Accept</code> header.",
                            "required": false,
                            "type": "string",
                            "enum": [
                                ".mixed",
                                ".json",
                                ".xml",
                                ".text",
                                ".html",
                                ".xhtml",
                                ".28io-json"
                            ],
                            "paramType": "path"
                        },
                        {
                            "name": "async",
                            "description": "Whether to execute the query asynchronously or not.",
                            "required": false,
                            "type": "boolean",
                            "paramType": "query",
                            "default": false
                        },
                        {
                            "name": "output-collection",
                            "description": "The output collection when runnng the query asynchronously.",
                            "required": false,
                            "type": "string",
                            "paramType": "query",
                            "default": false
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": false,
                            "type": "string",
                            "paramType": "query"
                        }                        
                    ],
                    "responseMessages": [
                        {
                            "code": 204,
                            "message": "The query produced no results, or an asynchronous execution was requested.",
                            "responseModel": "none"
                        },
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 404,
                            "message": "The specified query cannot be found.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 406,
                            "message": "The content-type or charset set by the query is not accepted according to the request Accept header. Note that application/mixed-json-xml is treated as */* when determining if the content-type set by the query is accepted or not.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "Returns query result."
                        }
                    ],
                    "examples": [
                        {
                            "title": "Executing a query",
                            "description": "The following request executes a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X POST \"http://myproject.28.io/v1/_queries/public/hello_world.jq?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n\"Hello World\""
                        },
                        {
                            "title": "Executing a query asynchronously",
                            "description": "The following request executes a public query named <code>hello_world.jq</code> asynchronously.",
                            "request": "curl -X POST \"http://myproject.28.io/v1/_queries/public/hello_world.jq?async&amp;token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n  \"success\" : true,\n  \"id\" : \"e97f43f3-8bd1-4ad7-9c38-72b56b01f9ee\",\n  \"href\" : \"/v1/_jobs/e97f43f3-8bd1-4ad7-9c38-72b56b01f9ee\"\n}"
                        }
                    ]
                }
            ]
        },
        {
            "path": "/_queries/{query-path}/metadata/source",
            "description": "Query Management",
            "operations": [
                {
                    "method": "GET",
                    "summary": "Retrieves a query source code",
                    "notes": "<p>This method retrieves the source code of a query. The response content-type is set according to the query language. If the query does not <a href=\"http://www.w3.org/TR/xquery-30/#id-version-declaration\" target=\"_blank\">declare its own dialect</a>, the query file extension is used to infer the language of the query. If the query file extension is <code>.xq</code> the query language is considered to be <code>XQuery</code>, <code>JSONiq</code>, otherwise.</p>",                    
                    "type": "string",
                    "produces": [
                        "text/x-jsoniq;charset=UTF-8",
                        "text/x-xquery;charset=UTF-8"
                    ],
                    "nickname": "getQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 404,
                            "message": "The specified query cannot be found.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "Returns query source code."
                        }
                    ],
                    "examples": [
                        {
                            "title": "Retrieving a query source code",
                            "description": "The following request retrieves the source code a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X GET \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/source?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\nlet $who := \"World\"\nreturn \"Hello \" || $who"
                        }
                    ]
                },
                {
                    "method": "POST",
                    "summary": "Creates a new query",
                    "notes": "<p>This method creates a new query resource. If the <code>compile</code> option is <code>none</code>, the query will not be compiled, if it is <code>lax</code> it will be compiled and any potential compilation error reported. In this case, compilation errors will not prevent the query to be created. To only create the query if no compilation errors are present, set the <code>compile</code> option to <code>strict</code>. The default is <code>none</code>.</p><p>The query file extension must be either <code>.jq</code> or <code>.xq</code>.</p>",
                    "type": "QueryUpdate",
                    "nickname": "createQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        },
                        {
                            "name": "compile",
                            "description": "The kind of compilation to perform. The default is none.",
                            "required": false,
                            "type": "string",
                            "enum": [
                                "strict",
                                "lax",
                                "none"
                            ],
                            "paramType": "query"
                        },
                        {
                            "name": "query-body",
                            "description": "The source code of the query",
                            "required": true,
                            "type": "string",
                            "paramType": "body"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 422,
                            "message": "A compilation error occurred in strict mode.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 201,
                            "message": "The query has been created."
                        }
                    ],
                    "examples": [
                        {
                            "title": "Creating a new query",
                            "description": "The following request creates a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X POST -H \"Content-Type: text/plain\" -d \"1 + 1\" \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/source?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 201 Created"
                        }
                    ]
                },
                {
                    "method": "PUT",
                    "summary": "Creates or updates a query",                    
                    "notes": "<p>This method updates the source code of an existing query. If the <code>compile</code> option is <code>none</code>, the query will not be compiled, if it is <code>lax</code> it will be compiled and any potential compilation error reported. In this case, compilation errors will not prevent the query to be created or updated. To only create the query if no compilation errors are present, set the <code>compile</code> option to <code>strict</code>. The default is <code>none</code>.</p><p>The query file extension must be either <code>.jq</code> or <code>.xq</code>.</p>",
                    "type": "QueryUpdate",
                    "nickname": "saveQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        },
                        {
                            "name": "compile",
                            "description": "The kind of compilation to perform. The default is none.",
                            "required": false,
                            "type": "string",
                            "enum": [
                                "strict",
                                "lax",
                                "none"
                            ],
                            "paramType": "query"
                        },
                        {
                            "name": "query-body",
                            "description": "The query source code",
                            "required": false,
                            "type": "string",
                            "paramType": "body"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 404,
                            "message": "The specified query cannot be found.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 422,
                            "message": "A compilation error occurred in strict mode.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "The query has been updated."
                        },
                        {
                            "code": 201,
                            "message": "The query has been created."
                        }
                    ],
                    "examples": [
                        {
                            "description": "The following request saves a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X PUT -H \"Content-Type: text/plain\" -d \"1 + 1\" \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/source?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n  \"success\": true\n}",
                            "title": "Updating a query"
                        }
                    ]
                },
                {
                    "method": "DELETE",
                    "summary": "Removes a query",
                    "notes": "<p>This method removes a query.</p>",
                    "type": "Success",
                    "nickname": "removeQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 404,
                            "message": "The specified query cannot be found.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "The query has been deleted."
                        }
                    ],
                    "examples": [
                        {
                            "description": "The following request deletes a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X DELETE \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/source?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n  \"success\": true\n}",
                            "title": "Deleting a query"
                        }
                    ]
                }
            ]
        },
        {
            "path": "/_queries/{query-path}/metadata/plan",
            "description": "Query Plan",
            "operations": [
                {
                    "method": "GET",
                    "summary": "Retrieves a query execution plan",
                    "notes": "<p>This method retrieves the execution plan of a query.</p>",
                    "type": "IteratorPlan",
                    "nickname": "getQueryPlan",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "Returns query execution plan."
                        }
                    ],
                    "examples": [
                        {
                            "description": "The following request retrieves the execution plan of a public query named <code>hello_world.jq</code>.",
                            "request": "curl -X GET \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/plan?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n  \"kind\": \"SingletonIterator\",\n  \"value\": \"xs:string(Hello World)\"\n}",
                            "title": "Retrieving a query execution plan"
                        }
                    ]
                },
                {
                    "method": "PUT",
                    "summary": "Precompiles a query",
                    "notes": "<p>This method precompiles a query. If the specified query has already been precompiled, the precompiled query is updated.</p>",
                    "type": "CompilationResult",
                    "nickname": "compileQuery",
                    "parameters": [
                        {
                            "name": "query-path",
                            "description": "The query path. It starts with \"public\" or \"private\" and contains slashes.",
                            "required": true,
                            "type": "string",
                            "paramType": "path"
                        },
                        {
                            "name": "token",
                            "description": "A project token.",
                            "required": true,
                            "type": "string",
                            "paramType": "query"
                        }
                    ],
                    "responseMessages": [
                        {
                            "code": 400,
                            "message": "Bad request: a parameter is missing or invalid.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 401,
                            "message": "Unauthorized: the specified project token is invalid or expired.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 422,
                            "message": "A compilation error occurred.",
                            "responseModel": "Error"
                        },
                        {
                            "code": 500,
                            "message": "An internal error occurred during the processing of the request.",
                            "responseModel": "Error"
                        }
                    ],
                    "successMessages": [
                        {
                            "code": 200,
                            "message": "The query has been compiled successfully."
                        }
                    ],
                    "examples": [
                        {
                            "description": "The following request compiles the public query named <code>hello_world.jq</code>.",
                            "request": "curl -X PUT \"http://myproject.28.io/v1/_queries/public/hello_world.jq/metadata/compiled?token=dGZKZ0VYT1VWV2l1R1BLQ1NBTjVmcEJlWU04PToyMDEzLTExLTA2VDAxOjU0OjI5LjgzOTQ1Wg==\"",
                            "response": "< 200 OK\n{\n  \"success\": true\n}",
                            "title": "Compiling a query"
                        }
                    ]
                }
            ]
        }
    ],
    "models": {
        "CompilationResult": {
          "id": "CompilationResult",
          "description": "Compilation result",
          "required" : [
            "success"
          ],
          "properties": {
                "success": {
                    "type": "boolean",
                    "enum": [
                        "true"
                    ]
                },
                "request_id": {
                    "type": "string",
                    "description": "The request identifier. Present only if the compilation fails"
                },
                "compilationError": {
                    "type": "CompilationError",
                    "description": "The compilation error, if any"
                }
            }
        },
        "Success": {
            "id": "Success",
            "description": "Default success response",
            "required": [
                "success"
            ],
            "properties": {
                "success": {
                    "type": "boolean",
                    "enum": [
                        "true"
                    ]
                }
            }
        },
        "Error": {
            "id": "Error",
            "description": "Error information",
            "required": [
                "request_id",
                "context",
                "message",
                "description"
            ],
            "properties": {
                "request_id": {
                    "type": "string",
                    "description": "The request identifier"
                },
                "context": {
                    "type": "string",
                    "description": "The complete domain name of the project"
                },
                "message": {
                    "type": "string",
                    "description": "A formatted string which contain the error code (always) and the module name, line and column-number and error description (when available)"
                },
                "type": {
                    "type": "string",
                    "description": "For XQuery errors, the type of the error (e.g. static)"
                },
                "code": {
                    "type": "string",
                    "description": "For XQuery errors, the error code"
                },
                "location": {
                    "type": "Location",
                    "description": "For XQuery errors, the error location (if available)"
                },
                "stack-trace": {
                    "type": "array",
                    "items": {
                        "$ref": "StackEntry"
                    },
                    "description": "For XQuery errors, the error stack trace (if available)"
                }
            }
        },
        "CompilationError": {
            "id": "CompilationError",
            "description": "Compilation error information",
            "required": [
                "context",
                "message",
                "description"
            ],
            "properties": {
                "context": {
                    "type": "string",
                    "description": "The complete domain name of the project"
                },
                "message": {
                    "type": "string",
                    "description": "A formatted string which contain the error code (always) and the module name, line and column-number and error description (when available)"
                },
                "type": {
                    "type": "string",
                    "description": "For XQuery errors, the type of the error (e.g. static)"
                },
                "code": {
                    "type": "string",
                    "description": "For XQuery errors, the error code"
                },
                "location": {
                    "type": "Location",
                    "description": "For XQuery errors, the error location (if available)"
                }
            }
        },
        "Location": {
            "id": "Location",
            "description": "Error information",
            "required": [
                "module",
                "line-number",
                "line-number-end",
                "column-number",
                "column-number-end"
            ],
            "properties": {
                "module": {
                    "type": "string",
                    "description": "The error module"
                },
                "line-number": {
                    "type": "string",
                    "description": "The error first line number"
                },
                "line-number-end": {
                    "type": "string",
                    "description": "The error last line number"
                },
                "column-number": {
                    "type": "string",
                    "description": "The error first column number"
                },
                "column-number-end": {
                    "type": "string",
                    "description": "The error last column number"
                }
            }
        },
        "StackEntry": {
            "id": "StackEntry",
            "description": "A stack entry",
            "required": [
                "function",
                "location"
            ],
            "properties": {
                "function": {
                    "type": "Function",
                    "description": "The function of the call"
                },
                "type": {
                    "type": "Location",
                    "description": "The location of the call"
                }
            }
        },
        "ModuleUpdate": {
            "id": "ModuleUpdate",
            "description": "The result of the module compilation",
            "required": [
                "success"
            ],
            "properties": {
                "success": {
                    "type": "boolean",
                    "enum": [
                        "true"
                    ]
                },
                "compilationError": {
                    "type": "Error",
                    "description": "The compilation error occurred during the module compilation, if any"
                }
            }
        },
        "QueryListing": {
            "id": "QueryListing",
            "description": "A list of public and/or private queries",
            "required": [],
            "properties": {
                "public": {
                    "type": "array",
                    "items": {
                        "$ref": "Query"
                    },
                    "description": "The list of public queries. It is always present when listing all queries or public queries"
                },
                "private": {
                    "type": "array",
                    "items": {
                        "$ref": "Query"
                    },
                    "description": "The list of public queries. It is always present when listing all queries or private queries"
                }
            }
        },
        "QueryResult28IO": {
            "id": "QueryResult28IO",
            "description": "Query results serialized using the 28io+json serialization method",
            "required": [
                "defaultContentType",
                "items",
                "count"
            ],
            "properties": {
                "defaultContentType": {
                    "type": "string",
                    "description": "The default content-type. All serialized items that do not contains a \"content_type\" field have this content-type"
                },
                "items": {
                    "type": "array",
                    "items": {
                        "$ref": "Item28IO"
                    },
                    "description": "The serialized query result items"
                },
                "count": {
                    "type": "integer",
                    "description": "",
                    "minimum": 1
                }
            }
        },
        "Item28IO": {
            "id": "Item28IO",
            "description": "An item serialized using the 28io+json serialization method",
            "required": [
                "content"
            ],
            "properties": {
                "contentType": {
                    "type": "string",
                    "description": "The item content-type, if different from the default one"
                },
                "href": {
                    "type": "string",
                    "description": "A link that can be used to refer to the item. It is present only for items which are stored in a MongoDB collection"
                },
                "content": {
                    "type": "string",
                    "description": "The item serialized using the \"json+xml hybrid\" serialization method"
                }
            }
        },
        "Query": {
            "id": "Query",
            "description": "Metadata about a query",
            "required": [
                "href",
                "lastModified"
            ],
            "properties": {
                "href": {
                    "type": "string",
                    "description": "The query path. (e.g.: \"/public/query.jq\")"
                },
                "lastModified": {
                    "type": "date-time",
                    "description": "The date and time the query was last modified"
                }
            }
        },
        "IteratorPlan": {
            "id": "IteratorPlan",
            "description": "An iterator plan",
            "required": [
                "kind"
            ],
            "properties": {
                "kind": {
                    "type": "string",
                    "description": "The iterator kind"
                },
                "iterators": {
                    "type": "array",
                    "items": {
                        "$ref": "IteratorPlan"
                    },
                    "description": "The plan of nested iterators"
                },
                "allow-atomics": {
                    "type": "string",
                    "description": "The allow-atomics iterator property"
                },
                "ascending": {
                    "type": "string",
                    "description": "The ascending iterator property"
                },
                "attr_cont": {
                    "type": "string",
                    "description": "The attr_cont iterator property"
                },
                "cached": {
                    "type": "string",
                    "description": "The cached iterator property"
                },
                "check-only": {
                    "type": "string",
                    "description": "The check-only iterator property"
                },
                "copyInputNodes": {
                    "type": "string",
                    "description": "The copyInputNodes iterator property"
                },
                "distinct": {
                    "type": "string",
                    "description": "The distinct iterator property"
                },
                "doc_test_kind": {
                    "type": "string",
                    "description": "The doc_test_kind iterator property"
                },
                "function": {
                    "type": "string",
                    "description": "The function iterator property"
                },
                "id": {
                    "type": "string",
                    "description": "The id iterator property"
                },
                "inputVar": {
                    "type": "string",
                    "description": "The inputVar iterator property"
                },
                "is-dynamic": {
                    "type": "string",
                    "description": "The is-dynamic iterator property"
                },
                "materialize": {
                    "type": "string",
                    "description": "The materialize iterator property"
                },
                "name": {
                    "type": "string",
                    "description": "The name iterator property"
                },
                "need-to-copy": {
                    "type": "string",
                    "description": "The need-to-copy iterator property"
                },
                "nill allowed": {
                    "type": "string",
                    "description": "The nill allowed iterator property"
                },
                "pos-referenced-by": {
                    "type": "string",
                    "description": "The pos-referenced-by iterator property"
                },
                "qname": {
                    "type": "string",
                    "description": "The qname iterator property"
                },
                "quant": {
                    "type": "string",
                    "description": "The quant iterator property"
                },
                "referenced-by": {
                    "type": "string",
                    "description": "The referenced-by iterator property"
                },
                "skip": {
                    "type": "string",
                    "description": "The skip iterator property"
                },
                "target_position": {
                    "type": "string",
                    "description": "The target_position iterator property"
                },
                "targetPos": {
                    "type": "string",
                    "description": "The targetPos iterator property"
                },
                "test kind": {
                    "type": "string",
                    "description": "The test kind iterator property"
                },
                "type": {
                    "type": "string",
                    "description": "The type iterator property"
                },
                "typename": {
                    "type": "string",
                    "description": "The typename iterator property"
                },
                "value": {
                    "type": "string",
                    "description": "The value iterator property"
                },
                "varid": {
                    "type": "string",
                    "description": "The varid iterator property"
                },
                "varkind": {
                    "type": "string",
                    "description": "The varkind iterator property"
                },
                "varname": {
                    "type": "string",
                    "description": "The varname iterator property"
                }
            }
        }
    }
}

