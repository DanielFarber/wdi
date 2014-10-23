require "./active_comedian"
require_relative "./connection"

ActiveComedian.create({joke: "My dog has no nose!"})
ActiveComedian.create({joke: "Knock knock!"})
ActiveComedian.create({joke: "No soap, radio!"})



ActiveComedian.all.each do |comedian|
	comedian.say_joke
end