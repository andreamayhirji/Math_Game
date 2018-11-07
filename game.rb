require './question.rb'
require './player.rb'

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
            # asks a user a question => method from question classs
            question = Question.new
            puts "Question for #{player.name}:"
            puts "#{question.ask_question()}"
            print "> "
            check_answer = question.correct_answer?()

                if check_answer
                    puts "Good job, #{player.name} you are correct!"
                    puts "And the score is..."
                    puts "#{@P1.name}: #{@P1.display_score()} vs #{@P2.name}: #{@P2.display_score()}"
                else
                # decrements player lives if wrong => method in your player class    
                    player.decrease_score()
                    puts "Oh, #{player.name}... that is not the right answer."  
                    puts "And the score is..."
                    puts "#{@P1.name}: #{@P1.display_score()} vs #{@P2.name}: #{@P2.display_score()}"
                end

                # checks to see if game should continue (player has more than 0 lives) => if statement in your start
                if @P1.score == 0
                    puts "#{@P2.name} wins with a score of #{@P2.display_score()}."
                    puts "----- Game Over ------"
                    puts "Bye bye!"
                    break

                elsif @P2.score == 0  
                    puts "#{@P2.name} wins with a score of #{@P2.display_score()}."
                    puts "----- Game Over ------"
                    puts "Bye bye!"
                    break
                else 
                    puts "----- Next turn ------"
                end
        
        end
    end

end

# game = Game.new("Andrea", "Matthew")
# game.start
