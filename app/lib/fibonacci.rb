# frozen_string_literal: true

# Klass Fibonacci
# returns Fibonacci sequence like string based on range value
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
    fib_ary = []

    range.times do |n|
      fib_ary[n] = 0 if n.zero?
      fib_ary[n] = 1 if n == 1
      fib_ary[n] = fib_ary[n - 1] + fib_ary[n - 2] if n >= 2
    end
    fib_ary
  end
end
