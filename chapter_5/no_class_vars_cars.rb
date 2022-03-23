class Car 
  attr_reader :make

  def self.makes 
    @makes ||= []
  end

  def self.cars
    @cars ||= {}
  end

  def self.total_count
    @total_count ||= 0
  end
  def self.total_count=(count)
    @total_count = count
  end

  def self.add_make(make) 
    unless self.makes.include?(make)
      self.makes << make
      self.cars[make] = 0
    end
  end
  def initialize(make)
    if Car.makes.include?(make)
      @make = make
      Car.cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}"
    end
  end

  def make_mates
    self.class.cars[self.make]
  end
 
end

class Hybrid < Car

end


Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")

puts "same cars as h2: #{h2.make_mates}"
puts "There are #{Car.total_count} cars"
puts "There are #{Hybrid.total_count} hybrid cars"

x = Car.new("Fjord")

