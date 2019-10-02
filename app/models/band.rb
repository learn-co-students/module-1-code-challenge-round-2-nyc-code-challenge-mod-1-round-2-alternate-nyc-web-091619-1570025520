class Band
    attr_reader :hometown
    attr_accessor :name
    @@all = []

    def initialize (name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    def self.all_introductions
      puts "Hello, we are #{@name} and we're from #{@hometown}."
    end

    def play_in_venue(venue, date)
        Concert.new(venue, date, self)
    end

    def my_concerts
        Concert.all.select do |concert|
            concert.band == self
        end

    end



end #end of band