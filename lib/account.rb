class Account

  def initialize
    @balance = 0.00
  end

  def balance
    '%.2f' % @balance
  end

  def deposit(amount)
    @balance += amount
  end

  def withdraw(amount)
    fail 'Insufficient Funds' if @balance - amount <= 0
    @balance -= amount
  end

end
