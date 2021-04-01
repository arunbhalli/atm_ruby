class Atm
    attr_accessor :funds

    def initialize
        @funds = 1000
    end

    def withdraw(amount, account)
        
        case 
        when insuifficient_funds_in_account?(amount, account)
            {status: false, message: 'insufficient funds'}
            
        else
            perform_transaction(amount, account)
            
        end
    end

    private

    def insuifficient_funds_in_account?(amount, account)
        amount > account.balance
    end

    def perform_transaction(amount, account)
        @funds -= amount
        account.balance = account.balance - amount
        { status: true , message: 'success', amount: amount}
    end




end
    

  
     
  
  
