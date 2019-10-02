require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Code Goes Here
def_leopard = Band.new("Def Leopard", "New Jersey")
backstreet_boys = Band.new("Backstreet Boys", "Texas")
stix = Band.new("Stix", "New York")

five_town = Venue.new("Five Town", "Miami")
six = Venue.new("6", "New York")
zara = Venue.new("Zara", "Chicago")

c1= Concert.new(stix, zara, "5-8-1985")
c2= Concert.new(stix, six, "7-12-1989")
c3= Concert.new(backstreet_boys, five_town, "1-19-1999")
binding.pry
0
