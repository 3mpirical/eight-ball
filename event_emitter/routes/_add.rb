
def add(emitter)
    ##### ABSTRACTED FUNCS #####
    def handle_new_answer
        print("\nWhat is your answer?) ")
        new_answer = gets.strip()
        old_answers = Model.get_answers()
        if(old_answers.include?(new_answer))
            puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            puts("         That answer already exists")
            puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        else
            Model.add_answer(new_answer) 
            puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            puts("           Answer has been added ")
            puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        end
    end

    ##### EVENT LISTENERS #####
    emitter.add("add answer") {|event| handle_new_answer()}
end