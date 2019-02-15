def remove(emitter)
    ##### ABSTRACTED FUNCS #####
    def remove_answer
        View.display_answers()
        puts("What Answer Do You Want To Remove?")
        print("\nNumber) ")
        answer = gets.strip().to_i
        num_of_cur_answers = Model.get_answers().length
        if(answer > num_of_cur_answers || answer < 1)
            puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            puts("         That number is not an option")
            puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        else
            Model.remove_answer(answer - 1)
            puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            puts("         Answer sucessfully removed")
            puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        end
    end

    ##### EVENT LISTENERS #####
    emitter.add("remove answer") {|event| remove_answer()}
    emitter.add("remove") {|event| remove_answer()}
    emitter.add("rem") {|event| remove_answer()}
    emitter.add("-rem") {|event| remove_answer()}
end