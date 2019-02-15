def menu(emitter)
    ##### ABSTRACTED FUNCS #####
    def handle_menu(emitter)
        View.menu_display()
        View.get_emit_input(emitter)
    end

    ##### EVENT LISTENERS #####
    emitter.add("menu") {|event| handle_menu(emitter)}
    emitter.add("m") {|event| handle_menu(emitter)}
    emitter.add("-m") {|event| handle_menu(emitter)}
    emitter.add("help") {|event| handle_menu(emitter)}
    emitter.add("h") {|event| handle_menu(emitter)}
    emitter.add("-h") {|event| handle_menu(emitter)}
end