require "./active_comedian"


class ReallyActiveComedian  < ActiveComedian

	def say_joke_twice
		print self.joke
		print self.joke
	end

end