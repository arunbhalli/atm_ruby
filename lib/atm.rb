# we completed the atm rb file
class Atm
    attr_accessor :funds

    def initialize(attributes)
        self.funds= attributes[:initial_funds]
    end

    def withdraw(attrs)
        account=attrs[:account]
        amount=attrs[:amount]
        if (account.balance > amount)
            self.funds -= amount
            binding.pry
            account.balance = account.balance - amount
        else
            {status: 'error',message:'you cant do this!'}
      end
    end 
end