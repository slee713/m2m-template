class Movie
    attr_reader :title, :duration, :rating
    @@all = []

    def initialize(title, duration, rating)
        @title = title
        @duration = duration
        @rating = rating.clamp(0,10)
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

    def average_age_actors
        average = self.actors.map do |actor|
            actor.age 
        end
        (average.sum.to_f/average.count).round(2)
    end

    def count_actors
        self.actors.count
    end

    def self.most_actors
        number_actors = self.all.map do |movie|
            movie.count_actors
        end.max
        
        self.all.find_all do |movie|
            movie.count_actors == number_actors
        end
    end

    def youngest_actor
        self.actors.min_by do |actor|
            actor.age
        end
    end


end