require './lib/account'

describe Account do
  it 'Is initiated with a balance of zero' do
    account = Account.new
    expect(account.balance).to eq 0.00
  end

  it 'money can be deposited' do
    account = Account.new
    account.deposit(100.00)
    expect(account.balance).to eq 100.00
  end
end
