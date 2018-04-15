require 'fibonacci'

describe Fibonacci do
  context 'receives a valid' do
    subject { described_class.new(param).sequence }

    context 'integer' do
      let(:fibonacci_return) { '0, 1, 1, 2, 3, 5, 8, 13, 21, 34'}
      let(:param) { { range: 10 } }


      it { is_expected.to eq fibonacci_return }
    end

    context 'string' do
      let(:fibonacci_return) { '0, 1, 1, 2, 3, 5, 8, 13' }
      let(:param) { { range: '8' } }

      it { is_expected.to eq fibonacci_return }
    end
  end
end
