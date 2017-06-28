#!/usr/bin/ruby

require 'json'
require 'net/http'
require 'open-uri'

API_KEY = "hAre3nb-MSJT42SmsyR8"

def sell (amount)
	Net::HTTP.post_form(URI.parse('http://btc42.42.us.org/exchange'), {'user_token' => API_KEY, 'btc_amount' => amount, 'kind' => 'sell'})
end

def buy (amount)
	Net::HTTP.post_form(URI.parse('http://btc42.42.us.org/exchange'), {'user_token' => API_KEY, 'btc_amount' => amount, 'kind' => 'buy'})
end

previousChange = 1

while true
	values = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['values']

	current = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['current']
	p "Current: " + current

	change = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['diff']
	p "Change: " + change

	dollars = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['money_dollar']
	p "Dollars: " + dollars

	bitcoins = JSON.parse(open("http://btc42.42.us.org/value.json/?user_token=#{API_KEY}").read)['money_btc']
	p "Bitcoins: " + bitcoins


	if (change.to_i == 0 || previousChange.to_i == 0)
		divide = 10
	else
		divide = (((previousChange.to_i)/(change.to_i).abs).to_f)*5 + 1
	end

	print "Divide: " + divide.to_s + "\n"

	if (change.to_i > 0 && bitcoins.to_i != 0)
		amount = (bitcoins.to_i/5).to_i
		if (amount > 0)
			sell(amount)
			print "Sell: " + amount.to_s + "\n"
		elsif (amount == 0)
			sell(1)
			print "Sell: 1 \n"
		end
	elsif (change.to_i < 0 && dollars.to_i != 0)
		amount = (dollars.to_i/current.to_i/5).to_i
		if (amount > 0)
			buy(amount)
			print "Buy: " + amount.to_s + "\n"
		elsif (amount == 0)
			buy(1)
			print "But: 1 \n"
		end
	end

	if (change.to_i == 0)
		previousChange = 1
	else
		previousChange = (change.to_i).abs
	end

	sleep(4)
end

