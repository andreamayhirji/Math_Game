require './question.rb'
require './player.rb'
require './score.rb'

    # The game needs to start
    # The game requires two players to begin
    # The game ends when a player's score == 0
    # The game would contain the loop

class Game
    attr_reader :P1, :P2 

    def initialize(player1, player2)
        @P1 = player1
        @P2 = player2
        @players = [@P1, @P2]
    end

    def start
        puts "Welcome to the game, #{@P1} and #{@P2}"
        # runs your game loop
        @players.cycle do |player| 
            # every loop =>
            puts "#{player}'s Turn"              
            # asks a user a question => method from question classs
            question = Question.new
            score = Score.new

            puts "#{player}: #{question.ask_question()}"
            print "> "
            check_answer = question.correct_answer?()

                if check_answer
                    puts "#{player}: You are right"
                    puts "#{@P1}: #{score.display_score()} vs #{@P2}: #{score.display_score()}"
                    puts "-----NEW TURN-----"
                else
                    score.decrease_score()
                    puts "#{player}: you are wrong"  
                    puts "#{@P1}: #{score.display_score()} vs #{@P2}: #{score.display_score()}"
                    puts "-----NEW TURN-----"
                end
                # decrements player lives if wrong => method in your player class
                # checks to see if game should continue (player has more than 0 lives) => if statement in your start
        
        end
    end

end

game = Game.new("player 1", "player 2")
game.start
# puts game.P1
# puts game.P2