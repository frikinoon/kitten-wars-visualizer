require_relative 'board'
require_relative 'kitten'

if __FILE__ == $PROGRAM_NAME
  board = Board.new(16,16)
  k1 = Kitten.new("Skardian", 4, 6)
  k2 = Kitten.new("Kevin", 9, 1)
  k3 = Kitten.new("Jesús", 12, 4)

  board.add(k1)
  board.add(k2)
  board.add(k3)

  puts board.draw
end
