require_relative '../lib/atm.rb'

describe Atm do
    subject{ Atm.new(initial_funds:1000)}

    it 'is expected to be an instance of Atm' do
        expect(subject.class).to eq Atm
    end

    it 'is expected to hold 1000 currency an initialize' do
        expect(subject.funds).to eq 1000
    end
    
    it 'is expected reduce funds on successful withdrawal' do
        subject.withdraw(amount:50)
        expect(subject.funds).to eq 850
    end
end
# work in progress

