class Account

  def initialize
    @balance = 0.00
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end
end
