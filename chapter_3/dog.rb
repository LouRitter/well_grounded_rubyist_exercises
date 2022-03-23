class Animal

  DIET_TYPES = ["herbavore", "carnivore", "omnivore"]

  attr_accessor :name, :weight
  attr_reader :diet
  
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class Mammal < Animal

  def type 
    @type = "mammal"
  end
end

class Dog < Mammal
  def initialize(name, diet)
    @name = name
    if Animal::DIET_TYPES.include?(diet)
      @diet = diet
    else
      @diet = "unknown"
    end
  end
end

class Cat < Mammal
  def initialize(name, diet)
    @name = name
    if Animal::DIET_TYPES.include?(diet)
      @diet = diet
    else
      @diet = "unknown"
    end
  end
end

honey = Dog.new("Honey", "omnivore")
kyle = Dog.new("Kyle", "carnivore")

honey.weight = 20

Animal.all.each do |animal|
  puts "animal type #{animal.type} "
  puts "animal species #{animal.class} "
  puts "animal name #{animal.name} "
  puts "animal diet #{animal.diet} "
  puts "animal weight #{animal.weight} "

end