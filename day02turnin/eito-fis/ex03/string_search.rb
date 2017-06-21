#!/usr/bin/ruby

holder = ""

if (ARGV.length != 1)
	print "none\n"
else
	matches = ARGV[0].scan('z')
	if (matches.length == 0)
		print "none\n"
	else
		matches.each do |z|
			holder += z
		end
		print holder + "\n"
	end
end