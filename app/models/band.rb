class Band

    attr_accessor :name
    attr_reader :hometown
    
    @@all = []

    def initialize(name, hometown)
        @name =  name
        @hometown = hometown

        @@all << self
    end

    
#instance methods

    def play_in_venue(venue, date)
        Concert.new(self, venue, date)
    end

    def concerts
        Concert.all.select {|concert|concert.band == self}
    end

#class methods

    def self.all
        @@all
    end

    def self.all_introductions
        name = Band.all.map {|band|band.name}
        hometown = Band.all.map{|band|band.hometown}
         "Hello, we are #{name} and we're from #{hometown}"
         #binding.pry
    end

end