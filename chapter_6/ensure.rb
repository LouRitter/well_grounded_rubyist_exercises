class InvalidLineError < StandardError

end

def line_from_file(filename, substring)
  fh = File.open(filename)
  begin
    line = fh.gets
    raise InvalidLineError unless line.include?(substring)
  rescue InvalidLineError
    puts "Invalid Line"
    raise
  ensure 
    fh.close
  end
  return line
end

line_from_file()