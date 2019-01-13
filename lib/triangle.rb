class Triangle
  # write code here
  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    num = [one, two, three]
      if num.any? {|n| n == 0}
        raise TriangleError
          #rescue TriangleError => error
          #puts error.message
        #end
      elsif num.each do |n|
              raise TriangleError if n < 0
            end
      end

      if num[0]+num[1] <= num[2]
        raise TriangleError
      elsif num[0]+num[2] <= num[1]
        raise TriangleError
      elsif num[1]+num[2] <= num[0]
        raise TriangleError
      end

        #checking if triangle is equilateral, isosceles or scalene
        case num.uniq.size
        when 1 then :equilateral
        when 2 then :isosceles
        else        :scalene
        end

  end  # the end of def kind

  class TriangleError < StandardError
    #def message
     #puts "number must not be zero"
    #end
  end
end
