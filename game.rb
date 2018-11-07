require './question.rb'
require './player.rb'
require './score.rb'

class Game

    # The game needs to start
    # The game requires two players to begin
    # The game ends when a player's score == 0
    # The game would contain the loop

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
            puts 'Ask a question'                
            # asks a user a question => method from question classs
            question = Question.new
            question.ask_question()
                # accepts a answer => gets.chomp
                # checks to see if answer is right => method from question class that accepts gets.chomp 
                # decrements player lives if wrong => method in your player class
                # checks to see if game should continue (player has more than 0 lives) => if statement in your start
        break
        end
    end

end

game = Game.new("Andrea", "Matthew")
game.start
# puts game.P1
# puts game.P2