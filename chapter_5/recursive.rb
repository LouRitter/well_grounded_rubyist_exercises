class C
  def x(value_for_a, rescurse = false)
    a = value_for_a
    p "self #{self}"
    p "a: #{a}"
    if rescurse
      puts "calling myself"
      x("second value")
      puts "a after recursion: #{a}"

    end
  end
end
c = C.new
c.x("first", true)