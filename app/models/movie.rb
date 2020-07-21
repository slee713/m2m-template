class Movie
    attr_reader :title, :duration
    @@all = []

    def initialize(title, duration)
        @title = title
        @duration = duration
        @@all << self
    end

    def self.all
        @@all
    end

    def add_actor(actor)
        MovieActor.new(self, actor)
    end

    #find all actors for a movie
    def actors
        movie_actor =MovieActor.all.find_all do |movieactor|
            movieactor.movie == self 
        end
        movie_actor.map do |ma|
            ma.actor
        end
    end

    def self.longest
        longest = self.all.map do |movie|
            movie.duration
        end.max
        self.all.find_all do |movie|
            movie.duration == longest
        end

    end








end