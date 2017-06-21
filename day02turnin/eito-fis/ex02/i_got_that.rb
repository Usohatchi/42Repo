#!/usr/bin/ruby

print "What you gotta say?: "

while true do
	input = gets.chomp
	if (input == "STOP!")
		break
	else
		print "I got that! Anything else?: "
	end
end
