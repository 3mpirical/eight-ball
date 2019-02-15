require("./model")
require("./view")
require("./state")
require("./event_emitter/emitter")

##### CONTROLLER #####
class Controller
    def self.init_eight_ball(emitter)
        View.menu_display()
        while(!State.exited?())
            View.get_emit_input(emitter)
        end
    end
end


####### EXECUTION #######
@emitter = Event_Emitter.new()
@emitter.init_routes("./event_emitter/routes/_menu")
@emitter.init_routes("./event_emitter/routes/_default")
@emitter.init_routes("./event_emitter/routes/_exit")
@emitter.init_routes("./event_emitter/routes/_ask")
@emitter.init_routes("./event_emitter/routes/_add")
@emitter.init_routes("./event_emitter/routes/_reset")
@emitter.init_routes("./event_emitter/routes/_remove")
@emitter.init_routes("./event_emitter/routes/_show")
@emitter.init_routes("./event_emitter/routes/_history")

Controller.init_eight_ball(@emitter)


