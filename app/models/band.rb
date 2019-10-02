class Band

    attr_accessor :name
    attr_reader :hometown

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_introductions
        puts "Hello, we are {insert band name here} and we're from {insert hometown here}."
    end
    
    
    
    # - `Band` should have a method `Band#play_in_venue` that takes a venue and date (as a string) as arguments and associates the band to that venue.  **Hint:  What part of the code base is responsible for associating a band and a venue?**
    def play_in_venue(venue, date)
        Concert.new(self, venue, date)
    end


    # - `Band` should have a method `Band#concerts` should return an array of all the concerts that the band has played in
    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
    end

end


