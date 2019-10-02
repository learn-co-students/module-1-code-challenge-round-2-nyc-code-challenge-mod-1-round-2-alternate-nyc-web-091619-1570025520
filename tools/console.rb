require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here
b1 = Band.new("Rolling Stones", "London")
b2 = Band.new("Beatles", "Liverpool")
b3 = Band.new("Tv On The Radio", "Brooklyn")

v1 = Venue.new("Webster Hall", "Manhattan")
v2 = Venue.new("Brooklyn Steel", "Brooklyn")
v3 = Venue.new("Piano", "Manhattan")

c1 = Concert.new(b1, v1, "10/10/2019")
c2 = Concert.new(b2, v2, "01/01/2020")
c3 = Concert.new(b3, v3, "20,10/2019")
c4 = Concert.new(b1, v1, "10/11/2019")


binding.pry
