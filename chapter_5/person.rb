class Person
  attr_accessor :first_name, :middle_name, :last_name

  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

lou = Person.new
lou.first_name = "Lou"
lou.last_name = "Ritter"

puts "Whole Name: #{lou.whole_name}"
lou.middle_name = "Anthony"
puts "New Whole Name: #{lou.whole_name}"