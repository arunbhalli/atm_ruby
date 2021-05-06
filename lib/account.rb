require 'date'


class Account
    attr_accessor :account_status, :owner, :balance, :pin_code
    
    
    STANDARD_VAILIDITY_YRS = 5

    def initialize (attrs = {})
        @pin_code = rand(1000..9999)
        @owner = set_owner(attrs[:owner])
        @balance = 0
        @account_status = :active
    end
   
    
    def exp_date
        Date.today.next_year(Account::STANDARD_VAILIDITY_YRS).strftime('%m/%y')
    end

    def self.deactivate(account)
      account.account_status = :deactivated
    end
end

private


def set_owner(obj)
    obj == nil ?  missing_owner : @owner = obj
end

def missing_owner
    raise "An Account owner is required"
end