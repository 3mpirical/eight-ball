def exit(emitter)
    ##### ABSTRACTED FUNCS #####
    def quit_application
        puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        puts("         Thanks for using us today!")
        puts("        May your predictions be true.")
        puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:\n\n")
        State.exit_true();
    end

    ##### EVENT LISTENERS #####
    emitter.add("exit") {|event| quit_application()}
    emitter.add("quit") {|event| quit_application()}
end