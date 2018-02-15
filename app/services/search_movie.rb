# Appelle la gem dotenv
require 'dotenv'
require 'themoviedb'

# Ceci appelle le fichier .env grâce à la gem dotenv, et enregistre toutes les données enregistrées dans une hash ENV
Dotenv.load

class SearchMovie
	attr_accessor :title

	def initialize(research)
		@title = research
	end

	def perform
		login
		research
	end

	def research
		@search = Tmdb::Search.new
		@search.resource('movie') # determines type of resource
		@search.query(@title) # the query to search against
		@search.fetch # makes request
	end

	def login
		Tmdb::Api.key(ENV['MOVIEDB_API_KEY'])
	end

end