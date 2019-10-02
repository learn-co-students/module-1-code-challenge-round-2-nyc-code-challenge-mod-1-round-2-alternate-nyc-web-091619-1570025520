require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here

band_A = Band.new("Rockers", "New Jersey")
band_B = Band.new("Rollers", "Sydney")

venue_A = Venue.new("Venue A", "New Jersey")
venue_B = Venue.new("Venue B", "New York")

conc_A = Concert.new("09/23/19", band_A, venue_A)
conc_B = Concert.new("09/29/19", band_B, venue_B)



Pry.start
