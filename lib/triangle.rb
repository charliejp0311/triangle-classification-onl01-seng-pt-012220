require "pry"
class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :sides
  def initialize(side_one, side_two, side_three)
    @sides = []
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
    @sides = [side_one, side_two, side_three]
    #binding.pry
    kind
  end

  def kind
    if @sides.include?(0)
      raise TriangleError
    elsif take(@sides) != class.Array 
      raise TriangleError
    else
      if @side_one == @side_two && @side_one == @side_three
        :equilateral
      elsif (@side_one == @side_two && @side_one != @side_three) || (@side_one == @side_three && @side_one != @side_two) || (@side_two == @side_three && @side_two != @side_one)
        :isosceles
      else
        :scalene
      end
    end


  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end
