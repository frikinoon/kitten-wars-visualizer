class Board
  attr_reader :x, :y

  def initialize(x, y)
   @x = x
   @y = y
  end

  def draw
    edge = '+' + '-'*@x + '+' + "\n"
    line = '|' + '·'*@x + '|' + "\n"
    edge + line*@y + edge
  end

end
