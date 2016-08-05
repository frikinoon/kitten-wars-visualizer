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
    edge + line*@y + edge
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

end
