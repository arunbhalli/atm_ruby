require_relative '../lib/atm.rb'

describe Atm do
    let(:account){instance_double('Acount')}

    before do
        allow(account).to receive(:balance).and_return(100)
        allow(account).to receive(:balance=)
    end
    
    it 'is expected to be an instance of Atm' do
        expect(subject.class).to eq Atm
    end

    it 'is expected to hold 1000 currency an initialize' do
        expect(subject.funds).to eq 1000
    end
    
    it 'is expected reduce funds on successful withdrawal' do
        subject.withdraw(150)
        expect(subject.funds).to eq 850
    end
    it 'allow withdrawl when there is enough money.' do
     expected_output={status:true, message:'success', date: Time.now , amount:45}
     expect(subject.withdrawl(45, account)).to eq expected_output   
    
    end
    it 'rejects when there is not enough cash' do
        expected_output={status:false, message:'insufficient funds', date: Time:now}
        expect(subject.withdraw(105,account)).to eq expected_output
    end

end

