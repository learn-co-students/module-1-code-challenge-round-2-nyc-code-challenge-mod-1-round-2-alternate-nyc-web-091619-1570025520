require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


b1 = Band.new("Zayn", "London")
b2 = Band.new("Taylor", "Cleveland")
b3 = Band.new("Celine", "NYC")
b4 = Band.new("ED", "London")

v1 = Venue.new("Happy", "NJ")
v2 = Venue.new("Sunshine", "Paris")
v3 = Venue.new("Waterbottle", "Ohio")


c1 = Concert.new("10", b2, v1)
c2 = Concert.new("5", b1, v3)
c3 = Concert.new("12", b3, v2)
c4 = Concert.new("6", b4, v1)
c5 = Concert.new("13", b1, v2)




# Test Code Goes Here

binding.pry
