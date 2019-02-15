##### VIEW #####
class View
    def self.menu_display()
        puts("\n==============================================")
        puts("(<8>)         MAGIC EIGHT BALL           (<8>)")
        puts("==============================================")
        puts("menu/help ---------------> shows other options")
        puts("(m, -m, h, -h)")
        puts("")
        puts("ask ----------------> inputs a question to ask")
        puts("a, -a")
        puts("")
        puts("add answer --------> adds a new answer to list")
        puts("add, -add")
        puts("")
        puts("remove answer ------> delete a possible answer")
        puts("remove, rem, -rem")
        puts("")
        puts("show answers -----> displays available answers")
        puts("show, sh, -sh")
        puts("")
        puts("reset answers -------> restore default answers")
        puts("reset, res, -res")
        puts("")
        puts("history --------> show question/answer history")
        puts("his, -his")
        puts("")
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