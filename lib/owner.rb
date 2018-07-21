class Owner

#attr_accessor :name
attr_reader :species
@@owners = []

  def initialize(species)
    @species = species
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
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
