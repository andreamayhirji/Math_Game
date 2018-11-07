require './player.rb'

class Score

    # stores the current score of both players
    # prints out after the end of every turn
    # decreases when the player gets a question wrong
    # when score is 0/3 then the game is over
    
    def initialize(score = 3)
        @score = score
    end

    def what_is_score
        @score
        # current_score out of score needs to be written as a fraction
        # puts "P1: 3/3 P2: 3/3"
        # if score == 0 game over puts "The game is over, P? is the winner"
        # if score > 0 game continues, next question is asked puts "-----NEW TURN-----"
    end

end