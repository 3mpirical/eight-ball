
def exit(emitter)
    ##### ABSTRACTED FUNCS #####
    def leave_app
        puts "\nHey there, I'm sorry to see you go!"
        State.exit_true()
    end
    ##### EVENT LISTENERS #####
    emitter.add("exit") {|event| leave_app()}
    emitter.add("quit") {|event| leave_app()}
end