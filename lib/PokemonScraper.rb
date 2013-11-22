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

	@@base_url = "http://bulbapedia.bulbagarden.net/wiki"

	def initialize(url)
		download = open(url)
		@html = Nokogiri::HTML(download)
	end


	def get_h1
		html.search("h1").text
	end

	# def get_a_href
	# 	html.search('a[href="/wiki/Wartortle_(Pok%C3%A9mon)"]').text
	# end


	#works for Generation 1 formatting

	def get_pokemon_url(name)
		@@base_url + "/"+(name.capitalize) + "_(Pok%C3%A9mon)"
	end


	def get_a_pokemon(name)
		html.search('a[href="/wiki/' +(name.capitalize) + '_(Pok%C3%A9mon)"]').text
	end

# href="/wiki/Espurr_(Pok%C3%A9mon)"


end

my_scraper = PokemonScraper.new("http://bulbapedia.bulbagarden.net/wiki/List_of_Pok%C3%A9mon_by_National_Pok%C3%A9dex_number")


puts "get_a_pokemon(espurr) = #{my_scraper.get_a_pokemon("espurr")}"

puts "get_pokemon_url(blastoise) = #{my_scraper.get_pokemon_url("blastoise")}"

puts "get_a_pokemon(Blastoise) = #{my_scraper.get_a_pokemon("Blastoise")}" #works!

pokemon_array = %w(Bulbasaur Ivysaur Venusaur Charmander Charmeleon)

 
 
# Charizard 

# Squirtle 
# Wartortle 
# Blastoise 
# Caterpie 
# Metapod 
# Butterfree 
# Weedle 
# Kakuna 
# Beedrill 
# Pidgey 
# Pidgeotto 
# Pidgeot 
# Rattata 
# Raticate 
# Spearow 
# Fearow 
# Ekans 
# Arbok 
# Pikachu 
# Raichu 
# Sandshrew 
# Sandslash 
# Nidoran♀ 
# Nidorina 
# Nidoqueen 
# Nidoran♂ 
# Nidorino 
# Nidoking 
# Clefairy 
# Clefable 
# Vulpix 
# Ninetales 
# Jigglypuff 
# Wigglytuff 
# Zubat 
# Golbat 
# Oddish 
# Gloom 
# Vileplume 
# Paras 
# Parasect 
# Venonat 
# Venomoth 
# Diglett 
# Dugtrio 
# Meowth 
# Persian 
# Psyduck 
# Golduck 
# Mankey 
# Primeape 
# Growlithe 
# Arcanine 
# Poliwag 
# Poliwhirl 
# Poliwrath 
# Abra 
# Kadabra 
# Alakazam 
# Machop 
# Machoke 
# Machamp 
# Bellsprout 
# Weepinbell 
# Victreebel 
# Tentacool 
# Tentacruel 
# Geodude 
# Graveler 
# Golem 
# Ponyta 
# Rapidash 
# Slowpoke 
# Slowbro 
# Magnemite 
# Magneton 
# Farfetch'd 
# Doduo 
# Dodrio 
# Seel 
# Dewgong 
# Grimer 
# Muk 
# Shellder 
# Cloyster 
# Gastly 
# Haunter 
# Gengar 
# Onix 
# Drowzee 
# Hypno 
# Krabby 
# Kingler 
# Voltorb 
# Electrode 
# Exeggcute 
# Exeggutor 
# Cubone 
# Marowak 
# Hitmonlee 
# Hitmonchan 
# Lickitung 
# Koffing 
# Weezing 
# Rhyhorn 
# Rhydon 
# Chansey 
# Tangela 
# Kangaskhan 
# Horsea 
# Seadra 
# Goldeen 
# Seaking 
# Staryu 
# Starmie 
# Mr. Mime 
# Scyther 
# Jynx 
# Electabuzz 
# Magmar 
# Pinsir 
# Tauros 
# Magikarp 
# Gyarados 
# Lapras 
# Ditto 
# Eevee 
# Vaporeon 
# Jolteon 
# Flareon 
# Porygon 
# Omanyte 
# Omastar 
# Kabuto 
# Kabutops 
# Aerodactyl 
# Snorlax 
# Articuno 
# Zapdos 
# Moltres 
# Dratini 
# Dragonair 
# Dragonite 
# Mewtwo 
# Mew )