require './score.rb'

class Question
    # A new math question is generated for each turn by picking two numbers between 1 and 20
    
    def ask_question #public method?
        prng = Random.new
        num1 = prng.rand(20)
        num2 = prng.rand(20)
        puts "What does #{num1} + #{num2} equal?"
        # maybe I don't do this here....
        # if answer is false score -= 1 puts "wrong"
        # else answer is true puts "correct"
    end
    
end


# question1 = Question.new
# question1.ask_question


