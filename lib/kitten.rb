class Kitten
  attr_reader :name
  def initialize(name)
   @name = name
  end

  def figure
    @name[0]
  end

end
