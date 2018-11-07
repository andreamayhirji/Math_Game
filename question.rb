require './score.rb'

class Question
    # A new math question is generated for each turn by picking two numbers between 1 and 20
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end

    def ask_question #public method?
        # num1 + num2 = answer
        # if answer is false score -= 1 puts "wrong"
        # else answer is true puts "correct"
    end
    
end


