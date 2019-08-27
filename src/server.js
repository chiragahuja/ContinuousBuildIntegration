var express = require('express');
var app = express();

app.get("/healthcheck",function(request, response){
    var obj =  {"myapplication" : [
				 {
					"version" : 1.0,
					"description" : "pre-interview technical test",
					"lastcommitsha" : process.env.LASTCOMMITHASH 
				 }
				 ]
			  };
	console.log(process.env)

    response.writeHead(200, {"Content-Type": "application/json"});
    response.write(JSON.stringify(obj));
	response.end()
});


port = 8080 
if (typeof process.env.PORT !== 'undefined') {
	port = process.env.PORT 
}

app.listen(port)
