require "./lib/shape"

class Circle < Shape
  attr_reader :color, :radius

  def initialize(color, radius)
    super(color)
    @radius = radius
  end

  def area
    3.14159 * (radius ** 2)
  end

end

c = Circle.new("blue", 5)
