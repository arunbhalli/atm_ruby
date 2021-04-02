require_relative '../lib/atm.rb'

describe Atm do
    subject{ Atm.new(initial_funds:1000)}
    let(:account){instance_double('Account')}

    it 'is expected to be an instance of Atm' do
        expect(subject.class).to eq Atm
    end

    it 'is expected to hold 1000 currency an initialize' do
        expect(subject.funds).to eq 1000
    end
    
    it 'is expected reduce funds on successful withdrawal' do
        allow(account).to receive(:balance).and_return(100)
        message= subject.withdraw(amount:100, account:account)
        expect(subject.funds).to eq 900
    end
    it 'is expected to reject a withdrawl attemt if there are no funds on account' do
        allow(account).to receive(:balance).and_return(100)
        message= subject.withdraw(amount:200, account:account) 
        expect(message).to eq status: 'error',message:'you cant do this!'
    end
end
# work in progress

