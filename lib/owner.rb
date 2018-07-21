class Owner

#attr_accessor :name
@@owners = []

  def initialize(self)
    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.count
  end
  # code goes here
end #end of the Owner class
