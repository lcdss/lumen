# frozen_string_literal: true

require 'web_helper'

RSpec.describe '/users' do
  context 'POST /' do
    context 'with valid input' do
      let(:input) { { name: 'John Doe', email: 'jdoe@example.com' } }

      it 'succeeds' do
        post_json '/users', input
        expect(last_response.status).to eq(200)
        user = parsed_body
        expect(user['id']).not_to be_nil
        expect(user['name']).to eq('John Doe')
        expect(user['email']).to eq('jdoe@example.com')
      end
    end

    context 'with invalid input' do
      let(:input) { { name: 'John Doe' } }

      it 'returns an error' do
        post_json '/users', input
        expect(last_response.status).to eq(422)
        user = parsed_body
        expect(user['errors']['email']).to include('is missing')
      end
    end
  end
end
