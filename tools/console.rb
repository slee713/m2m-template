require_relative '../config/environment.rb'

# create test data/variables here

avengers = Movie.new("The Avengers", 200, 12)
harry_potter = Movie.new("Harry Potter", 240, 8)
knives_out = Movie.new("Knives Out", 160, 10)

robert_downey_jr = Actor.new("Robert Downey Jr.", 30)
emma_watson = Actor.new("Emma Watson", 25)
chris_evans = Actor.new("Chris Evans", 35)
chris_hemsworth = Actor.new("Chris Hemsworth", 54)
daniel_radcliff = Actor.new("Danield Radcliff", 30)

avengers.add_actor(robert_downey_jr)
avengers.add_actor(chris_evans)
avengers.add_actor(chris_hemsworth)

emma_watson.add_movie(harry_potter)
chris_evans.add_movie(knives_out)
daniel_radcliff.add_movie(harry_potter)

# print avengers.average_age_actors
p avengers.youngest_actor
# print chris_evans.highest_rated_movie
# print chris_hemsworth.highest_rated_movie

binding.pry