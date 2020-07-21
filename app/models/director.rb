class Director
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def movies
        Movie.all.find_all {|movie| movie.director == self}
    end

    def worked_with_actors
        actors = self.movies.map do |movie|
            movie.actors
        end
        actors.flatten.uniq
    end

    def max_movie_duration
        self.movies.map {|movie| movie.duration}.max
    end

    def longest_movie
        self.movies.find_all {|movie| movie.duration == self.movie_duration}
    end

    def self.find_by_name(name)
        self.all.find_all {|director| director.name.gsub(/ /, "").downcase.include?(name.gsub(/ /, "").downcase)}
    end

    def find_movie_by_actor(name)
        self.movies.find_all {|movie| movie.actors.include?(name)}
    end

end