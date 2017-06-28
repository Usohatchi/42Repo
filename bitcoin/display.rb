#!/usr/bin/ruby

require 'json'
require 'net/http'
require 'open-uri'

API_KEY = "hAre3nb-MSJT42SmsyR8"

values = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['values']

#p "Values: " + values.to_s
current_id = values.last["id"]
p "Current ID: " + current_id.to_s

current = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['current']
p "Current: " + current

change = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['diff']
p "Change: " + change

dollars = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['money_dollar']
p "Dollars: " + dollars

bitcoins = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['money_btc']
p "Bitcoins: " + bitcoins

=begin
values.each_with_index do |data, index|
	print "ID: " + data["id"].to_s + "\n"
	print "Value: " + data["value"].to_s + "\n"
	print "Timestamp: " + data["created_at"] + "\n"

	if (index == 0)
		print "Change: 0\n\n"
	else
		change = values[index]["value"].to_i - values[index-1]["value"].to_i
		print "Change: " + change.to_s + "\n\n"
	end 
end
=end

