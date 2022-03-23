puts "Please Enter a celsius value: "
num = gets.to_i
f = File.new("temp.out", "w")
f.puts "The number is: #{(num * 9/5) + 32}"
f.close