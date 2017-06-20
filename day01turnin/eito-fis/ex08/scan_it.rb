#!/usr/bin/ruby

if (ARGV.length <= 1)
	print "none\n"
else 
	matches = ARGV[1].scan(ARGV[0])
	if (matches.length == 0)
		print "none\n"
	else
		print matches.length.to_s + "\n"
	end
end
