require "active_record"


class ActiveComedian < ActiveRecord::Base

	def say_joke
		print self.joke
	end

end