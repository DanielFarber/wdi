require "./robot1"

andrew = Robot.new
skinny = Robot.new

andrew.speak
skinny.speak

robots = []
10.times do
	robots << Robot.new
end

i = 0
while i < 10
	robots[i].speak
	i += 1
end

