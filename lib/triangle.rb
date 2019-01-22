class Triangle
  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  

  def kind
    if legal#create an if statement for the lengths of each side and return the symbol of the type of triangle
      if a == b && b == c
      :equilateral
      elsif a == b && c < a && c < b ||
      b == c && a < b && a < c ||
      a == c && b < a && b < c
      :isosceles
      else
      :scalene
      end
    else
      raise TriangleError
    end
  end

  def legal
    sides = [a, b, c]
    if (sides.none? {|t| t <= 0}) &&
      #(a <= 0) && (b <= 0) && (c <= 0) && ERROR
      ((a + b) > c) && ((b + c) > a) && ((a + c) > b)
      return true
    else
      false
    end
  end



  class TriangleError < StandardError
  end

end
