#!/usr/bin/ruby

if (ARGV.length == 0)
	print "none\n"
else
	for thing in ARGV
		print thing.upcase
	end
	print "\n"
end

