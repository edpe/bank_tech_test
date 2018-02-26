require './lib/transaction'
require 'timecop'

describe Transaction do

  subject(:transaction) { described_class.new(100, 100) }


  it "has an amount" do
    expect(transaction.amount).to equal 100
  end

  it "reports the balance" do
    expect(transaction.balance).to equal 100
  end

  it "has the current date" do
    Timecop.freeze do
      transaction = Transaction.new(100, 100)
      expect(transaction.date).to eq Time.now
    end
  end

end
