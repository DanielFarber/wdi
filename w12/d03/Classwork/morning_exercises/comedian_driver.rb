require "./comedian"

sam = Comedian.new("AAAAAAAAAAHHHHHH!!!")
bill = Comedian.new("Oba kaybee")
eddie = Comedian.new("Oh Eddeeeeeeeee...")


sam.say_joke
bill.say_joke
eddie.say_joke

def say_all_jokes(array)
	array.each do |comedian|
		comedian.say_joke
	end
end


say_all_jokes([sam, bill, eddie])