class Venue

    @@all = []

    attr_accessor :title, :city


    def initialize(title, city)
        @title = title
        @city = city
        @@all << self
    end

    def self.all
        @@all
    end

    def concerts
        Concert.all.select do |concerts|
            concerts.venue == self
        end
    end

    def bands
        Concert.all.map do |concerts|
            if concerts.venue == self
                concerts.band
            # binding.pry
            end
        end
    end


end # end of class