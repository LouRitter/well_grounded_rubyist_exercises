class Account 
  attr_accessor :balance 

  def initialize(balance)
    @balance = balance
  end

  def +(n)
    @balance += n
  end

  def -(n)
    @balance -= n
  end

  def to_s
    balance.to_s
  end

end

acc = Account.new(20)
puts acc.balance
acc -= 5
puts acc