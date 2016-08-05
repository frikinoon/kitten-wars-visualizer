class Kitten
  attr_reader :name, :x, :y

  def initialize(name, x, y)
   @name = name
   @x = x
   @y = y
  end

  def identifier
    @name[0]
  end

end
