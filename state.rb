
class State
    @exit = false

    def self.exited?()
        return @exit
    end
    
    def self.exit_true()
        @exit = true
    end
end