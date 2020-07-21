class Actor
    attr_reader :age
    attr_accessor :name
    
    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def add_movie(movie)
        MovieActor.new(movie, self)
    end

    def movies
        movie_actor = MovieActor.all.find_all do |movieactor|
            movieactor.actor == self
        end
        movie_actor.map {|ma| ma.movie}
    end

    def self.average_age
        all_age = self.all.map do |actor|
            actor.age
        end
        all_age.sum.to_f/all_age.count
    end

    def highest_rated_movie
        highest_rated_movie = self.movies.max_by do |movie|
            movie.rating
        end
        
        self.movies.find_all do |movie|
            movie.rating == highest_rated_movie.rating
        end
    end




end