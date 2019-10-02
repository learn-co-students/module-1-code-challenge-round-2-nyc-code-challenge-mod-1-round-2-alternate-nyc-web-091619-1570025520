class Concert

    attr_reader :date, :band, :venue

    @@all = []

    def initialize(date, band, venue)
        @date = date
        @band = band
        @venue = venue
        @@all << self
    end

    def self.all
        @@all
    end
    
    def venue
        # a concert venue location matches with the hometown
        Concert.all.each do |concert|
            concert.venue == self#band in that concert venue
        end
    end

    # - Concert is at a venue, that has a city. if that city is the same as the venue's band hometown return true 
    # - what is self here? 

    def hometown_show?
        Band.all.each do |location|
            location.hometown == location
        end
    end


end