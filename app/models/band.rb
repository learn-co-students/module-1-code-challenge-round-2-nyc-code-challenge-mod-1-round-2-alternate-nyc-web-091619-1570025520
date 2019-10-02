class Band

    attr_accessor :name, :hometown

    @@all = []

    def initialize(name, hometown)
        @name = name
        @hometown = hometown
        @@all << self
    end

    def self.all
        @@all
    end

    # doesnt iterate over the array and print intro for each band instance 
    def self.all_introductions
        puts "Hello, we are #{name} and we're from #{hometown}"
    end

    # def play_in_venue(venue, date)

    #     Concert.all.each do |bands|
    #         bands.
    #     end
    # end
end