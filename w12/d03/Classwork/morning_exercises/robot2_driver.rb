require "./robot2"

stinky = Robot.new
alfalfa = Robot.new

puts stinky.phrase
puts alfalfa.phrase

robots = []
10.times do
	robots << Robot.new
end

robots.each{ |robot| puts robot.phrase }
