def history(emitter)
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    emitter.add("history") {|event| View.display_history()}
end