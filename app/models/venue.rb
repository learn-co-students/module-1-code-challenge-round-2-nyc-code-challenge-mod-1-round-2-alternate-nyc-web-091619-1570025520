class Venue

  attr_accessor

  @@all = []

  def initialize(title, city)
    @title = title
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

 


  def concerts
    Concert.all.each {|concert| concert.venue == self}
  end

  def bands
    Concerts.all.each {||}
  end


end
