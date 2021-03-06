class Owner

attr_accessor :name, :pets
attr_reader :species
@@owners = []
@pets = {}

  def initialize(species, pets={:fishes=>[], :dogs=>[], :cats=>[]})
    @species = species
    @pets = pets
    @@owners << self
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    fish = Fish.new(name)
    @pets[:fishes] << fish
  end

  def buy_cat(name)
    cat = Cat.new(name)
    @pets[:cats] << cat
  end

  def buy_dog(name)
    dog = Dog.new(name)
    @pets[:dogs] << dog
  end

  def walk_dogs
    pets[:dogs].map {|dog| dog.mood = "happy"}
  end

  def play_with_cats
    pets[:cats].map {|cat| cat.mood = "happy"}
  end

  def feed_fish
    pets[:fishes].map {|fish| fish.mood = "happy"}
  end

  def sell_pets
    pets.each do |type, pets|
      pets.map {|pet| pet.mood = "nervous"}
  end
  pets.clear
end

def list_pets
  "I have #{pets[:fishes].size} fish, #{pets[:dogs].size} dog(s), and #{pets[:cats].size} cat(s)."
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
