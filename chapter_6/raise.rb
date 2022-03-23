def fussy_method(x)
  raise ArgumentError, "I need a number under 10 " unless x < 10
end


# #raise
# fussy_method(12)

# ## rescue
# begin
#   fussy_method(233)
# rescue ArgumentError
#   puts "that wasnt an acceptable number!"
# end

begin
  fussy_method(32)
rescue ArgumentError => e 
  puts "Not accepted"
  p "backtrace"
  p e.backtrace
  p "exception objects message"
  p e.message
end