
describe 'user stories' do
  let(:account) { Account.new(0.00) }

  # as a client
  # so I can keep my money in my account
  # I want to be able to deposit money and store it in my account

  it 'client can deposit money and store it in the account' do
    account.deposit(100)
    account.deposit(550)
    account.deposit(740)
    expect(account.balance).to eq(1390)
    expect(account.history[1].credit).to eq(550)
  end

  # as a client
  # so I can take money out of my account
  # I want to be able to withdraw money from my account

  it 'client can withdraw money from the account' do
    account = Account.new(5000)
    account.withdraw(100)
    account.withdraw(230)
    account.withdraw(1500)
    expect(account.balance).to eq(3170)
    expect(account.history[1].debit).to eq(230)
  end

  # as a client
  # so I can keep track of my money
  # I want to be able to see my transaction history

  # it 'client can print a statement showing their transaction history' do
  #   account.withdraw(500.00)
  #   account.deposit(2000.00)
  #   account.deposit(1000.00)
  #   expect(account.statement).to eq "date || credit || debit || balance" /n
  #                                   "14/01/2012 || || 500.00 || 2500.00" /n
  #                                   "13/01/2012 || 2000.00 || || 3000.00" /n
  #                                   "10/01/2012 || 1000.00 || || 1000.00"
  # end

end
