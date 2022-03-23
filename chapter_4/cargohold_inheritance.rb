

class Stack 
  attr_reader :stack

  def initialize
    @stack = []
  end

  def add_to_stack(obj)
    @stack.push(obj)
  end

  def take_from_stack
    @stack.pop
  end

end

class Suitcase
  def self.all
    ObjectSpace.each_object(self).to_a
  end
end

class CargoHold < Stack

  def load_and_report(suitcase)
    puts "Loading Suitcase"
    puts suitcase.object_id
    add_to_stack(suitcase)
  end

  def unload
    take_from_stack
  end

end

ch = CargoHold.new

100.times do 
  Suitcase.new
end


Suitcase.all.each do |sc|
  ch.load_and_report(sc)
end

while ch.stack.length > 0
  unloaded = ch.unload
  puts "#{unloaded.object_id} unloaded"
end

puts "All Suitcases Unloaded"


