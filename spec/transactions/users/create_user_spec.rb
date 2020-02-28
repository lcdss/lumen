require 'spec_helper'

RSpec.describe Lumen::Transactions::Users::CreateUser do
  let(:user_repo) { double('UserRepo') }
  let(:user) { Lumen::User.new(id: 1, name: 'John Doe', email: 'jdoe@example.com') }

  subject { described_class.new(user_repo: user_repo) }

  context 'with valid input' do
    let(:input) { { name: 'John Doe', email: 'jdoe@example.com' } }

    it 'creates a user' do
      expect(user_repo).to receive(:create) { user }
      result = subject.call(input)
      expect(result).to be_success
      expect(result.success).to eq(user)
    end
  end

  context 'with invalid input' do
    let(:input) { { name: 'John Doe', email: 'jdoe@example' } }

    it 'does not create a user' do
      expect(user_repo).not_to receive(:create)
      result = subject.call(input)
      expect(result).to be_failure
      expect(result.failure.errors[:email]).to include('has invalid format')
    end
  end
end
