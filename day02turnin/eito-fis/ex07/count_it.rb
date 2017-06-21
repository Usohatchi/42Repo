#!/usr/bin/ruby

if (ARGV.length == 0)
	print "none\n"
else
	print "parameters " + ARGV.length.to_s + "\n"
	ARGV.each do |input|
		print input + ": " + input.size.to_s + "\n"
	end
end 