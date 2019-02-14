##### MODEL #####
class Model
    ##### STATE #####
    @answer_array = ["Yes", "No", "Maybe", "Probably Not", "Ask Again Later", "What do you think?"]
    @history_array = []

    ### Getters/Setters/Etc ###
    def self.get_answers()
        return @answer_array
    end

    def self.random_answer()
        return @answer_array.sample()
    end

    def self.add_answer(answer)
        @answer_array.push(answer)
    end

    def self.reset_answers()
        @answer_array = ["Yes", "No", "Maybe", "Probably Not", "Ask Again Later", "What do you think?"]
    end

    def self.remove_answer(index)
        @answer_array.delete_at(index)
    end

    def self.get_history
        return @history_array
    end

    def self.push_to_history(question, answer)
        item = {
            question: question,
            answer: answer
        }
        @history_array.push(item)
    end
end
