class Dog
  # code goes here
  attr_reader :species, :name
  attr_accessor :mood

  def initialize(name)
    @name = name
    @species = "dog"
    @mood = "nervous"
  end
end