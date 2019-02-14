# include("./model")
require("./view")
require("./state")
require("./event_emitter/emitter")
require("colorize")

########## CONTROLLER ##########
def init_example(emitter)
    while(!State.get_exit())
        puts("==============================")
        puts("type either hello or exit/quit")
        print("> ")
        emitter.emit(gets.strip())
    end
end

##### CONTROLLER #####
class Controller
    def self.init_eight_ball(emitter)
        while(!State.get_exit())
            puts("==============================")
            puts("type either hello or exit/quit")
            print("> ")
            emitter.emit(gets.strip())
        end
    end
end


####### EXECUTION #######
emitter = Event_Emitter.new()
Routes.init(emitter)

Controller.init_eight_ball(emitter)


