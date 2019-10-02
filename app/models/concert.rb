class Concert

  attr_accessor :date, :band, :venue

  @@all = []

  def initialize(date, band, venue)
    @date = date
    @band =  band
    @venue = venue

    @@all << self
  end

  def self.all
    @@all
  end

  def band
    self.all.each {|b| b.concert == self}
  end

  def venue
    self.all.each
  end


  def venue(band, venue)
    Concert.new(band, venue, self)
  end

  def hometown_show?
  end



  end #end of Concert class

