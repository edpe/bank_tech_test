class Account

  def initialize(initial_balance = 0.00)
    @balance = initial_balance
  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
  end

end
