class Triangle

  attr_reader :sideA, :sideB, :sideC

  def initialize(sideA, sideB, sideC)
    @sideA = sideA
    @sideB = sideB
    @sideC = sideC
  end

  def kind
    validate_triangle
    if sideA == sideB && sideB == sideC
      :equilateral
    elsif sideA == sideB || sideB == sideC || sideA == sideC
      :isosceles
    else
      :scalene
    end
  end
  
  def validate_triangle
    real_triangle = [(sideA + sideB > sideC), (sideA + sideC > sideB), (sideB + sideC > sideA)]
    [sideA, sideB, sideC].each {|s| real_triangle << false if s <= 0 }
    raise TriangleError if real_triangle.include?(false)
  end

  class TriangleError < StandardError
  end

end
