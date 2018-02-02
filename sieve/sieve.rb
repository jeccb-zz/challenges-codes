module BookKeeping
  VERSION = 1
end

require 'prime'

class Sieve
  def initialize(number)
    @number = number
  end

  def primes
    expected = []
    Prime.each(@number) do |prime|
       expected << prime
    end
    expected
  end
end
