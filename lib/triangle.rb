class Triangle
  # write code here
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind

    if @one == 0 || @two == 0 || @three == 0
      raise TriangleError
    end

    if @one < 0 || @two < 0 || @three < 0
      raise TriangleError
    end

    if @three >= @one+@two || @two >= @one+@three || @one >= @two+@three
      raise TriangleError
    end

    if @one == @two &&  @two == @three
      :equilateral
    elsif @one == @two || @two == @three || @one == @three
      :isosceles
    elsif @one != @two && @two != @three && @one != @three
      :scalene
    end
  end

  class TriangleError < StandardError
    def no_size_message
      "Triangles with no size are illegal"
    end

    def negative_sides_message
      "Triangles with negative sides are illegal"
    end

    def triangle_inequality_message
      "Triangle violates triangle inequality"
    end


  end

end
