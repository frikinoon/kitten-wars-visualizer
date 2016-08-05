class Board
  attr_reader :x, :y

  def initialize(x, y)
   @x = x
   @y = y
  end

  def draw
    edge + line*@y + edge
  end

  private

  def edge
    '+' + '-'*@x + '+' + "\n"
  end

  def line
    '|' + '·'*@x + '|' + "\n"
  end

end
