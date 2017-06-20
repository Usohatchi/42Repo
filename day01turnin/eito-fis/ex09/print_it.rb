#!/usr/bin/ruby
if (ARGV.length <= 1)
	print "error"
else
	begin
		file = File.new(ARGV[0],'w')
	rescue => e
		print "error\n"
	else
		file << ARGV[1] + "\n"
		file.close
	end
end

