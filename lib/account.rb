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
    create_transaction(amount, "")
  end

  def withdraw(amount)
    @balance -= amount
    create_transaction("",amount)
  end

  def history
    @history
  end

  def statement
    @history.each do |transaction|
      print transaction.amount
    end
  end

  private

  def create_transaction(credit="", debit="")
    transaction = Transaction.new(credit, debit, @balance)
    @history << transaction
  end

end
