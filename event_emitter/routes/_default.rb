
def default(emitter)
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    emitter.add_default() {|event| 
        puts("ERROR: #{emitter} is not a valid command")
    }
end