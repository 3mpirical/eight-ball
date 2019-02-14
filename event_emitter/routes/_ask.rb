def ask(emitter)
    ##### ABSTRACTED FUNCS #####
    def handle_question(event)
        print "Input Question:  "
        question = gets.strip()
        answer = Model.random_answer()
        Model.push_to_history(question, answer)
        print "\nThinking "
        sleep(0.5)
        print ". "
        sleep(0.5)
        print ". "
        sleep(0.5)
        print ". "
        sleep(0.5)
        print ". "
        sleep(0.5)
        print "."
        sleep(0.5)
        puts "\n\n :*:*: Answer:  #{answer} :*:*:"
    end

    ##### EVENT LISTENERS #####
    emitter.add("ask") {|event| handle_question(event)}
end