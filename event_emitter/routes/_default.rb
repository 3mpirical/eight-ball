
def default(emitter)
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    emitter.add_default() {|event| puts("ERROR: #{event.name} is not a valid command") }
end