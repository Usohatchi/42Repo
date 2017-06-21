#!/usr/bin/ruby

if (ARGV.length <=1)
	print "none\n"
else
	ARGV.reverse_each do |word|
		print word + "\n"
	end
end