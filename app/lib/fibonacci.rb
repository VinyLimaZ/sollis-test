class Fibonacci

  attr_reader :range

  def initialize(param)
    @range = param[:range].to_i
  end

  def sequence
    fibonacci_ary = []

    range.times do |value|
      fibonacci_ary << fib(value)
    end

    to_s(fibonacci_ary)
  end

  private

  def to_s(fibonacci_ary)
    fibonacci_ary.join(', ')
  end

  def fib(value)
    return 0 if value < 1
    return 1 if value <= 2

    fib(value - 2) + fib(value - 1)
  end
end
