class HomeController < ApplicationController
  def index
  	require 'net/http'
  	require 'json'

  	@url = 'https://pro-api.coinmarketcap.com/v1/cryptocurrency/quotes/latest?CMC_PRO_API_KEY=de02675d-b8aa-4ecf-8833-d717a2bc41ad'
  	@uri = URI(@url)
  	@response = Net::HTTP.get(@uri)
  	@coins = JSON.parse(@response)
  	@my_coins = ["BTC", "XRP", "ADA", "XLM", "STEEM",]
	end

  def about
  end
  
end
