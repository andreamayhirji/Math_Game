require './question.rb'
require './player.rb'
# require './score.rb'

    # The game needs to start
    # The game requires two players to begin
    # The game ends when a player's score == 0
    # The game would contain the loop

class Game
    attr_reader :P1, :P2 

    def initialize(player1, player2)
        @P1 = Player.new(player1)
        @P2 = Player.new(player2)
        @players = [@P1, @P2]
    end

    def start
        puts "Welcome to the game, #{@P1.name} and #{@P2.name}"
        # runs your game loop
        @players.cycle do |player| 
            # every loop =>
            puts "#{player.name}'s Turn"              
            # asks a user a question => method from question classs
            question = Question.new
            # score = Score.new

            puts "#{player.name}: #{question.ask_question()}"
            print "> "
            check_answer = question.correct_answer?()

                if check_answer
                    puts "#{player.name}: You are right"
                    puts "#{@P1.name}: #{player.display_score()} vs #{@P2.name}: #{player.display_score()}"
                    puts "-----NEW TURN-----"
                else
                    player.decrease_score()
                    puts "#{player.name}: you are wrong"  
                    puts "#{@P1.name}: #{@P1.display_score()} vs #{@P2.name}: #{@P2.display_score()}"
                    puts "-----NEW TURN-----"
                end
                # decrements player lives if wrong => method in your player class
                # checks to see if game should continue (player has more than 0 lives) => if statement in your start
        
        end
    end

end

game = Game.new("Bassem", "Monica")
game.start
# puts game.P1
# puts game.P2