class Owner

#attr_accessor :name
@@owners = []

  def initialize()

    @@owners << self
  end

  def self.all
    @@owners
  end

  def self.reset_all
    @@owners.clear
  end

  def self.count
    @@owners.length
  end
  # code goes here
end #end of the Owner class
