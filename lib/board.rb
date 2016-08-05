class Board
  attr_reader :x, :y, :kittens

  def initialize(x, y)
   @x = x
   @y = y
  end

  def add(kitten)
    kittens[kitten.identifier] = kitten
  end

  def draw
    board = edge + line*@y + edge
    kittens.each do |key, kitten|
      x = kitten.x
      y = kitten.y
      board[drawing_position(x,y)] = kitten.identifier
    end
    board
  end

  def kittens
    @kittens ||= {}
  end

  private

  def edge
    '+' + '-'*@x + '+' + "\n"
  end

  def line
    '|' + '·'*@x + '|' + "\n"
  end

  def drawing_position(x, y)
    (@x + 3) * (y + 1) + (x + 1)
  end

end
