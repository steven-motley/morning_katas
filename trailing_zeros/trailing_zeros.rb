require 'debugger'

class Parser

  attr_reader :num

  def initialize num
    @num = num
  end

  def factorial
    num = self.num
    current = num
    (num-1).times do
      current *= num-=1
    end
    current
  end

  def count_trailing_zeros
    self.factorial.to_s.match(/(0*)$/)
    $1.length
  end

end

# Description:

# Write a program that will calculate the number of trailing zeros in a factorial of a given number.

# N! = 1 * 2 * 3 * 4 ... N

# zeros(12) = 2 # 1 * 2 * 3 .. 12 = 479001600 
# that has 2 trailing zeros 4790016(00)

# Be careful 1000! has length of 2568 digital numbers.

# def zeros(n)
  
# end