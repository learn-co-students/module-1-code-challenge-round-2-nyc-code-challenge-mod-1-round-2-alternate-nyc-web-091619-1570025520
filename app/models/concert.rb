class Concert

    @@all = []

    attr_accessor :date, :band, :venue


    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end

    def hometown_show?
        self.band.hometown == self.venue.city
    end


end # end of class