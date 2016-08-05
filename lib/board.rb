class Board
  attr_reader :x, :y, :kittens

  def initialize(x, y)
   @x = x
   @y = y
  end

  def add(kitten, x, y)
    kittens[kitten.name] = [kitten, x, y]
  end

  def draw
    board = edge + line*@y + edge
    kittens.each do |key, value|
      kitten = value[0]
      x = value[1]
      y = value[2]
      board[drawing_position(x,y)] = kitten.figure
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
