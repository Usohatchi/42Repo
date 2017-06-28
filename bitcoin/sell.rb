#!/usr/bin/ruby

require 'json'
require 'net/http'
require 'open-uri'

API_KEY = "hAre3nb-MSJT42SmsyR8"
amount = 164007;


Net::HTTP.post_form(URI.parse('http://btc42.42.us.org/exchange'), {'user_token' => API_KEY, 'btc_amount' => amount, 'kind' => 'sell'})


