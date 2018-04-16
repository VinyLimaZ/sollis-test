# frozen_string_literal: true

describe FibonacciController do
  describe 'POST #fibonacci' do
    context 'success' do
      it 'returns http success' do
        post :fibonacci
        expect(response).to have_http_status(:success)
      end

      let(:fibonacci_sequence) { '0, 1, 1, 2, 3, 5, 8, 13, 21, 34' }

      it 'return fibonacci sequence' do
        post :fibonacci, params: { range: 10 }

        expect(response.body).to include fibonacci_sequence
        expect(response.status).to be 200
      end
    end

    context 'invalid range param' do
      let(:failure_message) do
        'Negative value is invalid for range! Please use a positive'
      end

      it 'returns failure message' do
        post :fibonacci, params: { range: -10 }

        expect(response.body).to include failure_message
      end
    end
  end
end
