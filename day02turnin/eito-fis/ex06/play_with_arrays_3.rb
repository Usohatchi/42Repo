#!/usr/bin/ruby

numberArray = [2, 8, 9, 48, 8, 22, -12, 2]

outputArray = numberArray.select{ |x| x > 5 }.map{ |value| 
	value + 2
}

p numberArray
p outputArray.uniq