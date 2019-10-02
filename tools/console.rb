require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here

b1 = Band.new("U2", "Madison")
b2 = Band.new("Black eye peas", "New York")
b3 = Band.new("Madonna", "Bay Ridge")

v1 = Venue.new("Madison Square Gardens", "New York")
v2 = Venue.new("Splash Field", "Fremont")
v3 = Venue.new("Pepsi Stadium", "Sunnyvale")

c1 = Concert.new("30", b1, v1)
c2 = Concert.new("3", b2, v2)
c3 = Concert.new("15", b3, v3)

binding.pry

