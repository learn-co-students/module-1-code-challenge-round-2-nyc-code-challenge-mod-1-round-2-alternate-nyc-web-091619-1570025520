class Venue

    attr_accessor :title, :city

    @@all = []

    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    # - `Venue` should have a method `Venue#concerts` that lists all the concerts that have ever been performed in that venue
    def concerts
        Concert.all.select do |concert|
            concert.venue == self
        end
    end
    
    
    # - `Venue` should have a method `Venue#bands` that lists all the bands that have ever played in that venue

    def bands
        conc_ven = Concert.all.select do |concert|
            concert.venue == self
        end

        conc_ven.map do |concert|
            concert.band
        end
    end


end


