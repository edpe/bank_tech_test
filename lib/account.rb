require_relative 'transaction'

class Account

  def initialize(initial_balance = 0.00)
    @balance = initial_balance
    @history = []

  end

  def balance
    @balance
  end

  def deposit(amount)
    @balance += amount
    create_transaction(amount)
  end

  def withdraw(amount)
    @balance -= amount
    create_transaction(amount)
  end

  def history
    @history
  end

  private

  def create_transaction(amount)
    transaction = Transaction.new(amount, @balance)
    @history << transaction
  end

end
