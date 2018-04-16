# frozen_string_literal: true

class FibonacciController < ApplicationController
  def fibonacci
    render json: { sequence: fibonacci_range, status: status_response }
  end

  private

  def status_response
    if fibonacci_range.eql?(I18n.t('fibonacci.errors.negative_range'))
      return :not_acceptable
    end
    :ok
  end

  def fibonacci_range
    @fibonacci_range ||= Fibonacci.new(fibonacci_params).sequence
  end

  def fibonacci_params
    params.require(:fibonacci).permit(:range)
  end
end
