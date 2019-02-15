menu = -> {
    ##### ABSTRACTED FUNCS #####
    def handle_menu()
        View.menu_display()
        View.get_emit_input(@emitter)
    end

    ##### EVENT LISTENERS #####
    @emitter.add("menu") {|event| handle_menu()}
    @emitter.add("m") {|event| handle_menu()}
    @emitter.add("-m") {|event| handle_menu()}
    @emitter.add("help") {|event| handle_menu()}
    @emitter.add("h") {|event| handle_menu()}
    @emitter.add("-h") {|event| handle_menu()}

}.()
