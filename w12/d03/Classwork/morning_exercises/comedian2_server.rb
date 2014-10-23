require "pry"
require "json"
require "sinatra"
require "sinatra/reloader"
require "./comedian2"

comedians = [Comedian2.new("Pull my finger!"), Comedian2.new("Gotcher nose!"), Comedian2.new("What do you call a ten-foot-tall bear?")]

get "/joke" do
	joke = comedians[rand(comedians.length)].get_joke
	{joke: joke}.to_json
end

post "/joke" do
	comedian = Comedian2.new(params["joke"])
	comedians << comedian
end

