class Triangle
  # write code here
  attr_accessor :side_one, :side_two, :side_three, :sides
  def initialize(side_one, side_two, side_three)
    @sides = Array.new(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three
  end

  def kind


  end

  class TriangleError < StandardError

  end
end
