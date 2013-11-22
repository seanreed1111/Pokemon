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


	def get_h1
		html.search("h1").text
	end

	def get_a_href
		html.search('a[href="/wiki/Wartortle_(Pok%C3%A9mon)"]').text
	end

	def get_a_pokemon(name)
		html.search('a[href="/wiki/' + (name.capitalize) + '_(Pok%C3%A9mon)"]').text
	end



end

my_scraper = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number")

puts "my_scraper.get_h1 is #{my_scraper.get_h1}"

puts "my_scraper.get_a_href is #{my_scraper.get_a_href}"

puts "get_a_pokemon(espurr) = #{my_scraper.get_a_pokemon("espurr")}" #works!


