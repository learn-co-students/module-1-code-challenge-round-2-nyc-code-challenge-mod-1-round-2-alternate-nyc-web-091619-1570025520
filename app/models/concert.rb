require 'pry'

class Concert

    attr_accessor :band, :venue, :date

    @@all = []

    def initialize(band, venue, date)
        @band = band
        @venue = venue
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end

    # - `Concert` should have a method `Concert#hometown_show?` that returns true if the concert is in the band's hometown and false if it is not
    # def hometown_show
    #     conc_band_home = Concert.all.map do |concert|
    #         concert.band.hometown
    #     end
    #     if conc_band_home.include?(band)
    #         return true
    #     else false
    #     end

    # end

    def hometown_show
        conc_band_home = Concert.all.map do |concert|
            concert.band.hometown
        end
        if conc_band_home.include?(band) #.hometown
            conc_band_home.find do |concert|
                concert.band == band
                return true
            end
        else 
            false
        end
    end

    #Look through all of the concerts that are present
    #Iterate through to check if the concert playing(location of venue) has a band that has the same city as its hometown
    #check if band hometown is equal to the city of the venue

    # def hometown_show
    #     con_band = Concert.all.select do |concert|
    #         concert.band == band
    #     end
    #     band_ht = con_band.map do |band|
    #         band.hometown
    #     end

    # end

    # def hometown_show
    #     band_ht = Band.all.select do |band|
    #         band.hometown
    #     end
    #     venue_city = Venue.all.select do |venue|
    #         venue.city
    #     end
    #     if band_ht == venue_city
    #         return true
    #     else
    #         false
    #     end

    # end



end

