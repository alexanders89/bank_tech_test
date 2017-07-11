require './lib/account'

describe Account do
  it 'Is initiated with a balance of zero' do
    account = Account.new
    expect(account.balance).to eq '0.00'
  end

  it 'money can be deposited' do
    account = Account.new
    account.deposit(100.00)
    expect(account.balance).to eq '100.00'
  end

  it 'money can be withdrawn' do
    account = Account.new
    account.deposit(100.00)
    account.withdraw(20.00)
    expect(account.balance).to eq '80.00'
  end

  it 'will not allow an overdraft' do
    account = Account.new
    expect { account.withdraw(10.00) }.to raise_error 'Insufficient Funds'
  end

  it 'will not allow an insufficient withdrawel' do
    account = Account.new
    account.deposit(20.00)
    expect { account.withdraw(30.00) }.to raise_error 'Insufficient Funds'
  end

end
