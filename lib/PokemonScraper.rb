require 'open-uri'
require 'nokogiri'

# HOMEWORK: pokemon scraper
# create a scraper file that scrapes a single pokemon name from bulbapedia.
 
# create a simple pokemon class that has one instance variable, 'name', 
# and one method 'say_name'. write tests first.
 
# create a file called app.rb. using your scraper and your pokemon class, 
# create a pokemon object that gets it's name from your bulbapedia scraper.

class PokemonScraper
	attr_reader :html

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end

	def get_name
		html.search("a [href]").text
	end


end

my_scraper = Scraper.new("http://flatironschool-bk.herokuapp.com")