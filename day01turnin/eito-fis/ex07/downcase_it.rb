#!/usr/bin/ruby

if (ARGV.length == 0)
	print "none\n"
else
	for thing in ARGV
		print thing.downcase
	end
	print "\n"
end

