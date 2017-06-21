#!/usr/bin/ruby

if (ARGV.length == 0)
	print "none\n"
else
	ARGV.each do |input|
		endString = 0
		input.each_char.with_index do |char, location|
			if (char == "a" || char == "e" || char == "i" || char == "o" || char == "u")
				endString = location
				break
			end
		end
		if (endString == 0)
			print input.downcase + "way\n"
		else
			print input[endString..input.size].downcase + input[0..endString-1].downcase + "ay\n"
		end
	end
end

		