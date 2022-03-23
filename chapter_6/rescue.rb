print "Enter a number: "
n = gets.to_i
begin
  result = 100 / n 
rescue => exception
  puts exception
  exit
end

puts "100/#{n} is #{result}"