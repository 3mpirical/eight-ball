
class State
    @exit = false

    def self.get_exit()
        return @exit
    end
    
    def self.exit_true()
        @exit = true
    end
end