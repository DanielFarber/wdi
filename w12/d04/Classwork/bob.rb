class Bob

	def hey(greeting)

		if greeting.delete(" ").delete("\t") == ""
			return "Fine. Be that way!"
		elsif greeting[-1] == "?" && ( greeting.upcase != greeting || greeting.scan(/\d/) == greeting.scan(/\w/) )
			return "Sure."
		elsif greeting.upcase == greeting && greeting.scan(/\d/) != greeting.scan(/\w/)
			return "Whoa, chill out!"
		else
			return "Whatever."
		end
	end

end