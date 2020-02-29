require 'pry'
class Triangle
    attr_accessor :angle_x, :angle_y, :angle_z, :kind
    
    def initialize(angle_x, angle_y, angle_z)
      @angle_x = angle_x
      @angle_y = angle_y
      @angle_z = angle_z
    end
  
    def kind
     if (angle_x * angle_y * angle_z) == 0 || (angle_x + angle_y) <= angle_z || (angle_y + angle_z) <= angle_x || (angle_z + angle_x) <= angle_y 
          raise TriangleError
     elsif angle_x <= 0 || angle_y <= 0 || angle_z <= 0
          raise TriangleError
          elsif angle_x == nil || angle_y == nil || angle_z == nil
          raise TriangleError
      
        
     elsif angle_x == angle_y && angle_x == angle_z
        self.kind = :equilateral
        
     elsif angle_x == angle_y || angle_x  == angle_z || angle_y == angle_z
        self.kind = :isosceles
        
     else
        self.kind = :scalene
     end 
    end
end

  class TriangleError < StandardError
    def message
      puts "Not A Triangle"
    end
  end
  
#Straight angle (180-degrees)
#Acute angle (less than 90-degrees)
#Right angle (90-degrees)
#Obtuse angle (More than 90-degrees but less than 180 degrees)