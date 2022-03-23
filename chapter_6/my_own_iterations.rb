class Integer
  def my_times
    c = 0 
    puts "c=0"
    puts "until c == #{self}"
    until c == self
      yield c 
      c += 1
    end
    self
  end
end

class Array 
  def my_each 
    c = 0 
    until c == size
      yield self[c]
      c += 1
    end
    self
  end

  # def my_map 
  #   c = 0
  #   mapped = [] 
  #   until c == size 
  #     mapped << (yield self[c])
  #     c += 1
  #   end
  #   mapped
  # end

  def my_map 
    mapped = []
    my_each {|e| mapped << (yield e)}
    mapped
  end

end


ret = 5.my_times {|i| puts "I'm on iteration #{i}"}
puts ret
ret2 = 5.times {|i| puts "I'm on iteration #{i}"}
puts ret2

array = [1,2,3,4,5]
array.each {|e| puts "the block got handed this ##{e}"}
array.my_each {|e| puts "the block got handed this ##{e}"}

names = ["Lou", "Anthony", "Ritter"]
upcase = names.map {|name| name.upcase}
upcase2 = names.my_map {|name| name.upcase}
puts upcase
puts upcase2
