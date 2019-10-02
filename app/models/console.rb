require_relative 'band.rb'
require_relative 'venue.rb'
require_relative 'concert.rb'

require 'pry'

band1 = Band.new("Band1", "Paramus")
band2 = Band.new("Band2", "Hometown2")
band3 = Band.new("Band3", "Hometown3")


venue1 = Venue.new("title1", "Paramus")
venue2 = Venue.new("title2", "city2")
venue3 = Venue.new("title3", "city3")

concert1 = Concert.new(band1, venue1, "9/1/2019")
concert2 = Concert.new(band2, venue2, "9/2/2019")
concert3 = Concert.new(band3, venue3, "9/3/2019")
concert4 = Concert.new(band1, venue1, "9/4/2019")


binding.pry
0