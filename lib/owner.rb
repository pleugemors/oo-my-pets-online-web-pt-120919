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
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name, self)
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name, self)
  end
  
  def walk_dogs
    puts self.dogs
    self.dogs.walk 
  end

end