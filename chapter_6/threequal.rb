class Ticket
  attr_accessor :name, :venue, :date
  def initialize(name, venue, date)
    self.name = name
    self.venue = venue
    self.date = date
  end

  def ===(other_ticket)
    self.date == other_ticket.date
  end


end
module TicketComparer

  def self.compare(t1, t2, t3)
    case t1
    when t2
      puts "Same Date as t2"
    when t3 
      puts "Same Date as t3"
    else
      puts "No Matches"
    end
  end
end

t1 = Ticket.new("t1", "Town Hall", "07/08/22")
t2 = Ticket.new("t2", "Town Center", "07/18/22")
t3 = Ticket.new("t3", "Town Hall", "07/08/22")
puts "#{t1.name} is for an event on: #{t1.date}"
TicketComparer.compare(t1,t2,t3)

