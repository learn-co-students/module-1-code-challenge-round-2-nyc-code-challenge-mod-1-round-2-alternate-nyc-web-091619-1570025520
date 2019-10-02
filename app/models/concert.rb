class Concert

    attr_reader :band, :venue, :date

    @@all =[]

    def initialize(band, venue, date)
        @band = band
        @venue = venue
        @date = date
        
        @@all << self
    end

    def self.all
        @@all
    end

    def hometown_show
        
    end


end #end of class