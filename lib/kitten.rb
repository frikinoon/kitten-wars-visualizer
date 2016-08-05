class Kitten
  attr_reader :name
  def initialize(name)
   @name = name
  end

  def identifier
    @name[0]
  end

end
