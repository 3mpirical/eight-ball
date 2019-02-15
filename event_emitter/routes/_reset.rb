def reset(emitter)
    ##### ABSTRACTED FUNCS #####

    def reset_answers
        puts("\nDo you really want to reset all answers?")
        while(true)
            print("\n(yes/no) ")
            result = gets.strip()
            if(result == "yes")
                Model.reset_answers()
                puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
                puts("          Answers restored to default")
                puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
                break
            elsif(result == "no")
                puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
                puts("        I agree with your decision!")
                puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
                break
            else
                puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
                puts("           please enter yes or no")
                puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            end
        end
    end

    ##### EVENT LISTENERS #####
    emitter.add("reset answers") {|event| reset_answers()}
    emitter.add("reset") {|event| reset_answers()}
    emitter.add("-res") {|event| reset_answers()}
    emitter.add("res") {|event| reset_answers()}
end