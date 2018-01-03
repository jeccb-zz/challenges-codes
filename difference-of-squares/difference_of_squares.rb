module BookKeeping
  VERSION=5
end

class Squares

  def initialize(number)
    @number = number
  end

  def square_of_sum
    (0..@number).inject(:+) ** 2
  end

  def sum_of_squares
    sum = 0
    (0..@number).each do |n|
      sum +=  n * n
    end
    sum
  end

  def difference
    square_of_sum - sum_of_squares
  end
end
