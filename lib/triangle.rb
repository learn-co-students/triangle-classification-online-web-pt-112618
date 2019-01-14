class Triangle
  class TriangleError < StandardError
  end

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end


  def kind
    if (@a || @b || @c) == 0
      raise TriangleError
    end

    if @a < 0 || @b < 0 || @c < 0
      raise TriangleError
    end

    if @a >= (@b + @c) || @b >= (@a + @c) || @c >= (@a + @b)
      raise TriangleError
    end

    if (@a == @b) && (@b == @c)
      :equilateral
    elsif (@a == @b) || (@a == @c) || (@b == @c)
      :isosceles
    elsif (@a != @b) && (@a != @c) && (@b != @c)
      :scalene
    else
      raise TriangleError
    end
  end

end
