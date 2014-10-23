require "httparty"
require "json"

class Comedian2Client

	def initialize(str)
		@url = str
	end

	def print_joke
		joke = HTTParty.get(@url + "/joke")
		print JSON.parse(joke)["joke"]
	end

	def add_joke(str)
		joke = HTTParty.post(@url + "/joke", body: {"joke" => str})
	end


end
