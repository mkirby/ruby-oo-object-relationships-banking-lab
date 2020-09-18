class Transfer
    attr_accessor :sender, :receiver, :amount, :status

    #@@all = []

    def initialize(sender, receiver, amount)
        @sender = sender
        @receiver = receiver
        @amount = amount
        @status = "pending"
        #@@all << self
    end

    def valid?
        if sender.valid? && receiver.valid?
            true
        else
            false
        end
    end

    def execute_transaction
        if @sender.balance < amount || !valid? || @status == "complete"
            @status = "rejected"
            return "Transaction rejected. Please check your account balance."
        else
            @sender.balance -= amount
            @receiver.balance += amount
            @status = "complete"
        end
    end

    def reverse_transfer
        if @status == "complete"
            @sender.balance += amount
            @receiver.balance -= amount
            @status = "reversed"
        end

    end

end
