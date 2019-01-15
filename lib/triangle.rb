class Triangle
  attr_accessor :side1, :side2, :side3
  
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end
  
  def kind
    raise TriangleError if (@side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2)
    if (@side1 == @side2 && @side2 == @side3)  && @side1 > 0
      :equilateral
    elsif (@side1 == @side2 || @side2 == @side3 || @side3 == @side1) && @side1 > 0 && @side2 > 0 && @side3 > 0
      :isosceles
    elsif (@side1 != @side2 || @side2 != @side3 || @side3 != @side1) && @side1 > 0 && @side2 > 0 && @side3 > 0
      :scalene
    else
      raise TriangleError
    end
  end
end


class TriangleError < StandardError
  def message
    "That isn't a real triangle - try again!"
  end
end