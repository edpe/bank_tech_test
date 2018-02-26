class Account

  def initialize(initial_balance = 0.00)
    @balance = initial_balance
    @history = {}

  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount

  end

  def withdrawal(amount)
    @balance -= amount
  end

  def history
    @history
  end

end
