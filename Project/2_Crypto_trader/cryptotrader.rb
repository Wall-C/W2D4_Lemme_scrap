require 'rubygems'
require 'nokogiri'
require 'open-uri'
PAGE_URL = "https://coinmarketcap.com/all/views/all/" 

def get_the_rate(coin)
	page = Nokogiri::HTML(open(PAGE_URL))
	idHTML = "#id-"+coin.gsub(" ","-").downcase
	puts idHTML
	rate = 0
	return rate
end

def get_the_coins
	page = Nokogiri::HTML(open(PAGE_URL))
	coins = page.xpath('//div[@id="currencies-all_wrapper"]//table[@id="currencies-all"]//td//a')
	
	#coins = page.css("#currencies-all_wrapper #currencies-all #currencies-all a")
	return coins
end

get_the_coins.each{ |e|
	puts 'Hello'
}

#get_the_rate("ethereum Classic")