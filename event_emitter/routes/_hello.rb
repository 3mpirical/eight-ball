
def hello(emitter)
    ##### ABSTRACTED FUNCS #####
        def hello_to_you
            puts("\nHello to you good sir..!")
        end
        def hello_back
            puts("Well hello back at you!")
        end
    ##### EVENT LISTENERS #####
    emitter.add("hello") {|event| hello_to_you()}
    emitter.add("hello") {|event| hello_back()}
end
