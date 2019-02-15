##### VIEW #####
class View
    def self.menu_display()
        puts("\n==============================================")
        puts("(<8>)         MAGIC EIGHT BALL           (<8>)")
        puts("==============================================")
        puts("menu/help ---------------> shows other options")
        puts("ask ----------------> inputs a question to ask")
        puts("add answer --------> adds a new answer to list")
        puts("remove answer ------> delete a possible answer")
        puts("show answers -----> displays available answers")
        puts("reset answers -------> restore default answers")
        puts("history --------> show question/answer history")
        puts("exit/quit -----------------> quits application")
        puts("==============================================")
    end

    def self.display_answers
        answers = Model.get_answers()
        puts("\n==============================================")
        puts("            AVAILABLE ANSWERS")
        puts("==============================================")
        answers.each_with_index {|item, index| puts("#{index + 1}) #{item}") }
        puts("==============================================")
    end

    def self.display_history
        history = Model.get_history()
        if(history.length > 0)
            puts("\n==============================================")
            puts("                 HISTORY")
            puts("==============================================")
                history.each_with_index {|item, index| 
                    puts("#{index + 1}) #{item[:question]}") 
                    puts("Answer: #{item[:answer]}")
                    puts("")
                }
            puts("==============================================")
        else
            puts("\n:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
            puts("     No questions have been asked yet... ")
            puts("          Use the ask command! ")
            puts(":*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*:*::*:*:*:*:")
        end

    end

    def self.get_emit_input(emitter)
        print("\n(<8>): ")
        emitter.emit(gets.strip())
    end
end