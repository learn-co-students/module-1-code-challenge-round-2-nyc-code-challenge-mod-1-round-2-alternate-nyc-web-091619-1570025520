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


  def self.all_introductions
    self.all.each {|band| puts "Hello, we are #{band} and we're from #{hometown}"}
  end


  def play_in_venue(venue, date)
    Concert.all.select {|play| play.band == self}.map{|play| play.venue}
  end

  def concerts
    Concert.all.select {|music| music.band == self} 
  end

end #end of Band class
