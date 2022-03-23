class C 
  puts "Just inside class def here is self #{self}"
  @v = "instance var at top level of class"
  puts "here is @v #{@v} belonging to self: #{self}"
  def set_v 
    @v = "I am an instance variable and I belong to an instance of C"
  end

  def show_var 
    puts "Just inside instance method def here is self #{self}"
    @v = "instance var at instance method def"
    puts "here is @v #{@v} belonging to self: #{self}"
  end

  def self.set_v 
    @v = "I am an instance variable and i belong to "
  end

end

# C.set_v
c = C.new
# c.set_v
c.show_var