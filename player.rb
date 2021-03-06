# player will store the current score of the individual player, the score starts at 3.
# each player needs to be able to ask a question, or provide parameters for a question.
# each player will provide a response to the answer of the other player. (response will be correct or wrong)
# each player takes turn asking questions.

class Player
attr_accessor :name, :score

    def initialize(name, score = 3)
        @name = name
        @score = score
    end

    def decrease_score
        @score -= 1
    end

    def display_score
        "#{@score}/3"
    end

end