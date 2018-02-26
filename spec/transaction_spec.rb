require './lib/transaction'

describe Transaction do

  subject(:transaction) { described_class.new(100, 0, 100) }


  it "has a credit variable" do
    expect(transaction.credit).to equal 100
  end

  it "has a debit variable" do
    expect(transaction.debit).to equal 0
  end

  it "reports the balance" do
    expect(transaction.balance).to equal 100
  end

end
