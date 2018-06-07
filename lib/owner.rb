class Owner
  # code goes here
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(name)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @name = name
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    self.all.clear
  end

  def self.count
    self.all.length
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(animal_name)
    new_fish = Fish.new(animal_name)
    self.pets[:fishes] << new_fish
  end

  def buy_cat(animal_name)
    new_cat = Cat.new(animal_name)
    self.pets[:cats] << new_cat
  end

  def buy_dog(animal_name)
    new_dog = Dog.new(animal_name)
    self.pets[:dogs] << new_dog
  end

  def walk_dogs
    self.pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end

  def play_with_cats
    self.pets[:cats].each do |cat|
      cat.mood = "happy"
    end
  end

  def feed_fish
    self.pets[:fishes].each do |fish|
      fish.mood = "happy"
    end
  end

  def sell_pets
    self.pets.each do |animal_key, animal_array|
      animal_array.each do |animal|
        animal.mood = "nervous"
      end 
    end
    @pets.clear
  end

  def list_pets
    "I have #{self.pets[:fishes].size} fish, #{self.pets[:dogs].size} dog(s), and #{self.pets[:cats].size} cat(s)."
  end

end