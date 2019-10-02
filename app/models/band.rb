class Band

    attr_reader :hometown
    attr_accessor :name

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
        p "Hello, we are #{@name} and we're from #{@hometown}"
    end

    def play_in_venue(venue, date)
        Concert.new(self, venue, date)
        binding.pry
    end

    def concerts
        Concert.all.select do |concert|
            concert.band == self
        end
    end


end #End of Class