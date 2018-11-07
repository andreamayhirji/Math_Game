# EXAMPLE PROMPT
# Player 1: What does 5 + 3 equal?
# > 9
# Player 1: No, wrong.
# P1: 2/3 P2: 3/3
# -----NEW TURN-----
# Player 2: What does 6 + 2 equal?
# > 8
# Player 2: Correct.
# P1: 2/3 P2: 3/3
# -----NEW TURN-----
# ...some time later...
# Player 1 wins with a score of 1/3
# -----GAME OVER-----
# Thanks for playing. Good bye.

# NOUNS
# Player, Score, Question, Result?

class Game

    # The game needs to start
    # The game requires two players to begin
    # The game ends when a player's score == 0

    # The game would contain the loop

    def initialize(player1, player2)
        @P1 = Player.new
        @P2 = Player.new
        @players = [@P1, @P2]
    end

    def start
        @players.cycle do |player| 
            # runs your game loop
            # every loop =>
                # asks a user a question => method from question classs
                # accepts a answer => gets.chomp
                # checks to see if answer is right => method from question class that accepts gets.chomp 
                # decrements player lives if wrong => method in your player class
                # checks to see if game should continue (player has more than 0 lives) => if statement in your start
        end
    end

end

game = Game.new
game.start


class Player
    # player will store the current score of the individual player, the score starts at 3.
    # each player needs to be able to ask a question, or provide parameters for a question.
    # each player will provide a response to the answer of the other player. (response will be correct or wrong)
    # each player takes turn asking questions.

    def initialize(name, score = 3)
        @name = name
        @score = score
    end

end

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


