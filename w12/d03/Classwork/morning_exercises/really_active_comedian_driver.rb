require "./really_active_comedian"
require_relative "./connection"

ReallyActiveComedian.create({joke: "Who farted?"})
ReallyActiveComedian.create({joke: "A Polack gets out of bed!"})
ReallyActiveComedian.create({joke: "What do you get when you cross?"})




ReallyActiveComedian.all.each do |comedian|
	comedian.say_joke_twice
end