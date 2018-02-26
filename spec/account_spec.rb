require './lib/account'

describe Account do

  subject(:account) { described_class.new }

  it "initialises with a balance of 0" do
    expect(account.balance).to eq 0
  end

  describe '#deposit' do
    it "adds the deposited amount to the balance" do
      expect { account.deposit 100.00 }.to change { account.balance }.by 100.00
    end
  end



end
