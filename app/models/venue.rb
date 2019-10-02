class Venue

    attr_reader :title, :city
    
    @@all = []


    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concert|
            self == concert.venue
        end
    end

    def bands
        Bands.all.select do |performance|
            performance == self
        end
    end
end #End of Class