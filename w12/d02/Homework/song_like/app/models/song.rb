class Song < ActiveRecord::Base
	has_many :likes
end