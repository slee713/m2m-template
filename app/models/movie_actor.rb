class MovieActor
    attr_reader :movie, :actor
    @@all = []

    def initialize(movie, actor)
        @movie = movie
        @actor = actor
        @@all << self
    end

    def self.all
        @@all
    end
        

end