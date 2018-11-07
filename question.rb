require './score.rb'
# A new math question is generated for each turn by picking two numbers between 1 and 20

class Question

def initialize
    prng = Random.new
    @num1 = prng.rand(20)
    @num2 = prng.rand(20) 
end 

    def ask_question 
        "What does #{@num1} + #{@num2} equal?"
    end

    def correct_answer?
        answer = $stdin.gets.chomp.to_i
        correct_answer = @num1 + @num2
        correct_answer == answer
    end
    
end


#question = Question.new
#question.ask_question
#puts question.correct_answer?



