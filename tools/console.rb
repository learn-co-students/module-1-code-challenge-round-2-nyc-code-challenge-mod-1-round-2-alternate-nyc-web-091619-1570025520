require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here
goon = Band.new("the goonies", "michigan")
bulsoc = Band.new("Bullet Society", "The Bronx, NY")



radio = Venue.new("Radio city", "new york")
sobro = Venue.new("Madison", "bronx")



goonsquad = Concert.new("Today", goon, radio)
ozzfest = Concert.new('2012', goon, radio)
soldado = Concert.new('2018', goon, radio)


binding.pry
puts "something"
