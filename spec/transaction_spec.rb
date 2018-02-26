require './lib/transaction'
require 'timecop'

describe Transaction do

  subject(:transaction) { described_class.new(300, 200, 100) }

  it "has a credit amount" do
    expect(transaction.credit).to equal 300
  end

  it "has a debit amount" do
    expect(transaction.debit).to equal 200
  end

  it "reports the balance" do
    expect(transaction.balance).to equal 100
  end

  it "has the current date" do
    Timecop.freeze do
      transaction = Transaction.new(300, 200, 100)
      expect(transaction.date).to eq Time.now
    end
  end

end
