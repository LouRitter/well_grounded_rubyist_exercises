require 'date'
module DateValidator

  def valid_date?(date, format)
    DateTime.strptime(date.to_s, format)
    true
  rescue ArgumentError
    false
  end

end

class Ticket 
    include DateValidator

    def initialize(venue)
      @venue = venue
    end

    def event 
        "Cant be specified yet..."
    end 
    def venue 
      @venue
    end 

    def date=(date)
      format = '%Y-%m-%d'

      if valid_date?(date, format)
        @date = Date.strptime(date.to_s, format)
      else
        @date = "Invalid Date"
      end
    end

    def date 
      @date
    end 

    def price=(amount)
      if (amount * 100).to_i == amount * 100
        @price = amount
      else 
        puts "The price seems to be malformed."
      end
    end

    def price 
      @price
    end

    def discount(percent)
      @price * ((100 - percent.to_f)/100).to_f
    end

end

ticket = Ticket.new("Sample venue")
ticket2 = Ticket.new("Sample venue2")
ticket.date = "19-12-19"
ticket2.date = Date.today + 2
ticket.price = 23.32
ticket2.price = 10.00
puts "at #{ticket.venue} on #{ticket.date} for $#{"%.2f" % ticket.price} "
puts "at #{ticket2.venue} on #{ticket2.date} for $#{"%.2f" % ticket2.price} but will be discounted to $#{"%.2f" % ticket2.discount(20)}"
