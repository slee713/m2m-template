class Actor
    attr_reader :name
    
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def add_movie(movie)
        MovieActor.new(movie, self)
    end

    #find movies that actor is in

    def movies
        movie_actor = MovieActor.all.find_all do |movieactor|
            movieactor.actor == self
        end
        movie_actor.map {|ma| ma.movie}
    end

end