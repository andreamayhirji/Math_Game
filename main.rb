# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require './game.rb'

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