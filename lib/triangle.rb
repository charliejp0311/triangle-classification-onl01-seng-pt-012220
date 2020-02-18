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
    binding.pry
    kind
  end

  def kind
    if @side_one == @side_two && @side_one == @side_three
      :equilateral
    end

  end

  class TriangleError < StandardError

  end
end
