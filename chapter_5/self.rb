puts self
class C
   
  puts "class #{self}"  

  class << self 
    def x 
      puts "class call of x"
    end

    def y 
      puts "class call of y"

    end
  end

  module M
    puts "module #{self}"  
  end

  def self.class_method
    puts "class method #{self}"
  end

  def method
    puts "instance method #{self}"  
  end

  def call_method_thrice 
    method
    self.method
    s = C.new
    s.method

  end


end

c = C.new
def c.singleton 
  puts "singleton method #{self}"

end

c.singleton
C.class_method
C.x
C.y
c.method
c.call_method_thrice
