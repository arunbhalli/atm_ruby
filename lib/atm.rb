# we completed the atm rb file
class Atm
    attr_accessor :funds

    def initialize(attributes)
        self.funds= attributes[:initial_funds]
    end

    def withdraw(attrs)
        @funds -= attrs[:amount]
    end
end
