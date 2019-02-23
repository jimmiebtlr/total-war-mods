local http=require("socket.http");
local ltn12=require("ltn12");
local inspect = require('inspect');

function send ()
        local respbody = {}

        local res, code, response_headers = http.request{
            url = "http://httpbin.org/post",
            method = "POST",
            headers =
              {
                  ["Content-Type"] = "application/json";
              },
              source = ltn12.source.string('{"hello":"World"}'),
              sink = ltn12.sink.table(respbody),
        }

        print(inspect(respbody))
end


