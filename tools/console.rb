require_relative '../config/environment.rb'

# create test data/variables here
bob = Director.new("Bob")
steve = Director.new("Steve Bob")
solomon = Director.new("Solomon")


avengers = Movie.new("The Avengers", 200, 12, bob)
harry_potter = Movie.new("Harry Potter", 240, 8, steve)
knives_out = Movie.new("Knives Out", 160, 10, solomon)
captain_america = Movie.new("Captain America", 240, 7, bob)
iron_man_3 = Movie.new("Iron Man 3", 240, 5, bob)

robert_downey_jr = Actor.new("Robert Downey Jr.", 30)
emma_watson = Actor.new("Emma Watson", 25)
chris_evans = Actor.new("Chris Evans", 35)
chris_hemsworth = Actor.new("Chris Hemsworth", 54)
daniel_radcliff = Actor.new("Danield Radcliff", 30)

avengers.add_actor(robert_downey_jr)
avengers.add_actor(chris_evans)
avengers.add_actor(chris_hemsworth)

captain_america.add_actor(robert_downey_jr)
captain_america.add_actor(chris_evans)

iron_man_3.add_actor(robert_downey_jr)
iron_man_3.add_actor(chris_evans)

emma_watson.add_movie(harry_potter)
chris_evans.add_movie(knives_out)
daniel_radcliff.add_movie(harry_potter)

# print avengers.average_age_actors
# p avengers.youngest_actor
# print chris_evans.highest_rated_movie
# print chris_hemsworth.highest_rated_movie

# print chris_evans.worked_with_the_most #Robert Downey Jr

p bob.find_movie_by_actor(chris_evans)

binding.pry