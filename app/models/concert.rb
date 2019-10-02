class Concert
    attr_reader :band, :venue, :date

    @@all = []

    def initialize(band, venue, date)
        @band =  band
        @venue = venue
        @date = date

        @@all << self
    end

    def self.all
        @@all
    end

    def hometown_show
     if self.venue.city == band.hometown
        true
        else
        false
     #binding.pry  #returns true if the concert is in the band's hometown and false if it is not
        end
    end
end