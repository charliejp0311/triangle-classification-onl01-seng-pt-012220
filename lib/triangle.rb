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
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif @side_one == @side_two && @side_one == @side_three
      :equilateral
    end

  end

  class TriangleError < StandardError
    def message
      "invalid triangle"
    end
  end
end
