class Fish
  # code goes here
  attr_reader :species, :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @species = "fish"
    @mood = "nervous"
    
  end
end