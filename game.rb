require './question.rb'
require './player.rb'
require './score.rb'

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