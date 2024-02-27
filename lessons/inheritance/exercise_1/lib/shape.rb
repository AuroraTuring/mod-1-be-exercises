class Shape
  attr_reader :color#, :length, :width

  def initialize(color) #, length, width
    @color = color
    # @length = length
    # @width = width
  end

  def area
    @length * @width
  end

  def perimeter
    2 * (@length + @width)
  end
end
