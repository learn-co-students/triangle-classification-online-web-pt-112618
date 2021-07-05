class Triangle
  def initialize(side_1, side_2, side_3)
    @sides = []
    @sides << side_1
    @sides << side_2
    @sides << side_3
  end

  def valid
    sum_one_two = @sides[0] + @sides[1]
    sum_one_three = @sides[0] + @sides[2]
    sum_two_three = @sides[1] + @sides[2]

    if (@sides.none? {|side| side <= 0}) &&
      (sum_one_two > @sides[2] && sum_one_three > @sides[1] && sum_two_three > @sides[0])
      return true
    else
      return false
    end
   end

  def kind
    if valid
      if @sides.uniq.length == 1  
        return :equilateral
      elsif @sides.uniq.length == 2 
        return :isosceles
      else
        return :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end