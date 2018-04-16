# frozen_string_literal: true

require 'fibonacci'

describe Fibonacci do
  context 'receives a valid' do
    subject { described_class.new(param).sequence }

    context 'integer' do
      let(:fibonacci_return) { '0, 1, 1, 2, 3, 5, 8, 13, 21, 34' }
      let(:param) { { range: 10 } }

      it { is_expected.to eq fibonacci_return }
    end

    context 'string' do
      let(:fibonacci_return) { '0, 1, 1, 2, 3, 5, 8, 13' }
      let(:param) { { range: '8' } }

      it { is_expected.to eq fibonacci_return }
    end
  end

  context 'receives a invalid' do
    let(:param) { { range: '-1' } }
    let(:failure_message) do
      'Negative value is invalid for range! Please use a positive'
    end

    subject { described_class.new(param).sequence }

    it { is_expected.to eq failure_message }
  end
end
