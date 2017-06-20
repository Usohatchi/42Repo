#!/usr/bin/ruby

print "Please tell me your age : "
age = gets.chomp
print "You are currently " + age + " years old.\n"
age10 = age.to_i + 10
age20 = age.to_i + 20
age30 = age.to_i + 30
print "In 10 years, you'll be " + age10.to_s + " years old.\n"
print "In 20 years, you'll be " + age20.to_s + " years old.\n"
print "In 30 years, you'll be " + age30.to_s + " years old.\n"