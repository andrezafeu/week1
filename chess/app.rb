# FILES REQUIRED
require_relative "lib/rook.rb"
require_relative "lib/king.rb"
require_relative "lib/queen.rb"
require_relative "lib/pawn.rb"
require_relative "lib/bishop.rb"
require_relative "lib/knight.rb"
require_relative "lib/board.rb"

#INITIAL POSITIONS ---- b=black, w=white, left = left side of the board, right = right side of the board

#Rooks
br_left = Rook.new(1,8,"black")
br_right = Rook.new(8,1,"white")
wr_left = Rook.new(1,1,"white")
wr_right = Rook.new(8,1,"white")

#King
bk = King.new(5,8,"black")
wk = King.new(5,1,"white")

#Bishops
bb_left = Bishop.new(3,8,"black")
bb_right = Bishop.new(6,8,"black")
wb_left = Bishop.new(3,1,"white")
wb_right = Bishop.new(6,1,"white")

#Knights
bk_left = Knight.new(2,8,"black")
bk_right = Knight.new(7,8,"black")
wk_left = Knight.new(2,1,"white")
wk_right = Knight.new(7,1,"white")

#Queen
bq = Queen.new(4,8,"black")
wq = Queen.new(4,1,"white")

#Pawns
bp_1 = Pawn.new(1,7,"black")
bp_2 = Pawn.new(2,7,"black")
bp_3 = Pawn.new(3,7,"black")
bp_4 = Pawn.new(4,7,"black")
bp_5 = Pawn.new(5,7,"black")
bp_6 = Pawn.new(6,7,"black")
bp_7 = Pawn.new(7,7,"black")
bp_8 = Pawn.new(8,7,"black")

wp_1 = Pawn.new(1,2,"white")
wp_2 = Pawn.new(2,2,"white")
wp_3 = Pawn.new(3,2,"white")
wp_4 = Pawn.new(4,2,"white")
wp_5 = Pawn.new(5,2,"white")
wp_6 = Pawn.new(6,2,"white")
wp_7 = Pawn.new(7,2,"white")
wp_8 = Pawn.new(8,2,"white")


#MOVE TESTS

puts "\nRook tests:"
puts "------------"
puts "These should be true"

#Moving vertically down
puts br_left.move?(1, 4)
#Moving horizontally right (no obstructions)
puts br_left.move?(6, 8)

puts "\n These moves should be false:"
#Diagonal L move
puts wr_right.move?(6,2)
#Diagonal Bishop move
puts wr_right.move?(4,5)


puts "\nKing tests:"
puts "------------"
puts "These should be true"

#Moving vertically down (1 space)
puts bk.move?(5,7)
#Moving horizontally right (1 space) (no obstructions) 
puts bk.move?(6,8)
#Moving horizontally left (1 space) (no obstructions)
puts bk.move?(4,8)
#Moving diogonally (1 space) (no obstructions)
puts bk.move?(6,7)
puts bk.move?(4,7)

puts "\n These moves should be false:"
#Moving more than 1 space up
puts wk.move?(6,3)
#Moving more than 1 space right
puts wk.move?(8,1)
#Moving more than 1 space left
puts wk.move?(3,1)
#Moving diogonally more than 1 space
puts wk.move?(4,3)


puts "\nBishop tests:"
puts "------------"
puts "These should be true"
#Moving dioganally
puts bb_left.move?(1,6)
puts bb_left.move?(6,5)

puts "\n These moves should be false:"
#moving vertically
puts wb_right.move?(6,4)
#moving horizontally
puts wb_right.move?(3,1)
#other moves
puts wb_right.move?(7,3)


		puts "\nKnight tests:"
puts "------------"
puts "These should be true"
puts bk_left.move?(3,6)
puts bk_left.move?(4,7)
puts bk_left.move?(1,6)

puts "\n These moves should be false:"
puts wk_right.move?(4,5)
puts bk_left.move?(5,5)
puts bk_left.move?(4,6)


puts "\nQueen tests:"
puts "------------"
puts "These should be true"
puts bq.move?(8,4)
puts bq.move?(4,4)

puts "\n These moves should be false:"
puts wq.move?(2,4)
puts wq.move?(8,2)


puts "\nPawn tests:"
puts "------------"
puts "These should be true"
puts bp_1.move?(1,5)
puts bp_1.move?(1,6)

puts "These should be false"
puts wp_1.move?(2,2)

@pieces = [[],[],[],[],[],[],[],[],[]]
@pieces[1][8] = br_left
@pieces[8][8] = br_right
@pieces[1][1] = wr_left
@pieces[8][1] = wr_right
@pieces[5][8] = bk
@pieces[5][1] = wk
@pieces[3][8] = bb_left
@pieces[6][8] = bb_right
@pieces[3][1] = wb_left
@pieces[6][1] = wb_right
@pieces[2][8] = bk_left
@pieces[7][8] = bk_right
@pieces[2][1] = wk_left
@pieces[7][1] = wk_right
@pieces[4][8] = bq
@pieces[4][1] = wq
@pieces[1][7] = bp_1
@pieces[2][7] = bp_2
@pieces[3][7] = bp_3
@pieces[4][7] = bp_4
@pieces[5][7] = bp_5
@pieces[6][7] = bp_6
@pieces[7][7] = bp_7
@pieces[8][7] = bp_8
@pieces[1][2] = wp_1
@pieces[2][2] = wp_2
@pieces[3][2] = wp_3
@pieces[4][2] = wp_4
@pieces[5][2] = wp_5
@pieces[6][2] = wp_6
@pieces[7][2] = wp_7
@pieces[8][2] = wp_8

game = Board.new(@pieces)
puts game.move?([1,2],[5,3])