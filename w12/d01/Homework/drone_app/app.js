//api key = e45601ccca02c5af8036222be53a2f0f
//path: "/3/search/movie",

var request = require("request")

var query = {query: process.argv.slice(2, process.argv.length).join(" "), api_key: "e45601ccca02c5af8036222be53a2f0f"}

var string = JSON.stringify(query)
console.log(query)

var movieOptions = {
	url: "http://api.themoviedb.org/3/search/movie",
	qs: query
}
var response


function displayResults(err, resp, body){
	console.log(resp.body)
	response = resp.body
}

request(movieOptions, displayResults)

debugger