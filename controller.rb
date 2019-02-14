require("./model")
require("./view")
require("./state")
require("./event_emitter/emitter")
require("colorize")

##### CONTROLLER #####
class Controller
    def self.init_eight_ball(emitter)
        View.menu_display()
        while(!State.get_exit())
            View.get_emit_input(emitter)
        end
    end
end


####### EXECUTION #######
emitter = Event_Emitter.new()
Routes.init(emitter)
Controller.init_eight_ball(emitter)


