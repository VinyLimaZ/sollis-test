# frozen_string_literal: true
# Klass Fibonacci
# returns Fibonacci sequence based on range value

class Fibonacci
  attr_reader :range

  def initialize(param)
    @range = param[:range].to_i
  end

  def sequence
    return invalid_range if range.negative?

    fib(range).join(', ')
  end

  private

  def invalid_range
    I18n.t('fibonacci.errors.negative_range')
  end

  def fib(range)
    fibonacci_ary = []

    (range).times do |n|
      if n < 1
        f = 0
      elsif n < 2
        f = 1
      else
        f = fibonacci_ary[n - 1] + fibonacci_ary[n - 2]
      end
      fibonacci_ary[n] = f
    end

    fibonacci_ary
  end
end
