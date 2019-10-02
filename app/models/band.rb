class Band

    @@all = []

    attr_accessor :name
    attr_reader :hometown


    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_introductions
        self.all.each do |band|
            puts "Hello, we are #{band.name} and we're from #{band.hometown}"
        end
    end

    def play_in_venue(venue, date)
        Concert.new(date, self, venue)
    end

    def concerts
        Concert.all.select do |concerts|
            concerts.band == self
        end
    end


end # end of class