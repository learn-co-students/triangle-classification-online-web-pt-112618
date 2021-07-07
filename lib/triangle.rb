class Triangle
  attr_accessor :name1, :name2, :name3
  
  def initialize(name1, name2, name3)
  @name1 = name1
  @name2 = name2
  @name3 = name3
  
  end
  
  def kind 

    
   if ((@name1>=@name2+@name3)||(@name2>=@name1+@name3)||(@name3>=@name2+@name1)||(@name1<=0)||(@name2<=0)||(@name3<=0))
    
       raise TriangleError
   #  rescue TriangleError => error
   #      puts error.message
 end
 
      
      if ((@name1==@name2)&&(@name2==@name3))
      return :equilateral
    end
    if ((@name1==@name2)||(@name2==@name3)||(@name1==@name3))
      return :isosceles
    end
    
      return :scalene
  
  end
  
  class TriangleError < StandardError
    def message 
      "lalalla"
    end
  end
end
