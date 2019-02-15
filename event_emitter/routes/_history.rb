history = -> {
    ##### ABSTRACTED FUNCS #####

    ##### EVENT LISTENERS #####
    @emitter.add("history") {|event| View.display_history()}
    @emitter.add("his") {|event| View.display_history()}
    @emitter.add("-his") {|event| View.display_history()}

}.()
