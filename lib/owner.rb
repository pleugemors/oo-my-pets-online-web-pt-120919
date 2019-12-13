class Owner
  # code goes here
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self 
  end
  
  @@all = []
  
  attr_reader :name, :species
  
  def say_species 
    "I am a #{species}."
  end
  
  def self.all 
    @@all
  end
  
  def self.count
    @@all.size 
  end
  
  def self.reset_all
    @@all.clear 
  end
  
  def cats 
    Cats.all.select{|cat| cat.owner.name == self.name }
  end

end