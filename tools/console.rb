require_relative '../config/environment.rb'

# create test data/variables here

avengers = Movie.new("The Avengers", 200)
harry_potter = Movie.new("Harry Potter", 240)
knives_out = Movie.new("Knives Out", 160)

robert_downey_jr = Actor.new("Robert Downey Jr.")
emma_watson = Actor.new("Emma Watson")
chris_evans = Actor.new("Chris Evans")
chris_hemsworth = Actor.new("Chris Hemsworth")

avengers.add_actor(robert_downey_jr)
avengers.add_actor(chris_evans)
avengers.add_actor(chris_hemsworth)

emma_watson.add_movie(harry_potter)
chris_evans.add_movie(knives_out)

print Movie.longest


binding.pry