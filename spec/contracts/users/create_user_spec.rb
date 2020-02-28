require 'spec_helper'

RSpec.describe Lumen::Contracts::Users::CreateUser do
  context 'requires name' do
    let(:input) { { email: 'jdoe@example.com' } }

    let(:result) { subject.call(input) }

    it 'is invalid' do
      expect(result).to be_failure
      expect(result.errors[:name]).to include('is missing')
    end
  end

  context 'requires email' do
    let(:input) { { name: 'John Doe' } }

    let(:result) { subject.call(input) }

    it 'is invalid' do
      expect(result).to be_failure
      expect(result.errors[:email]).to include('is missing')
    end
  end

  context 'given valid parameters' do
    let(:input) { { name: 'John Doe', email: 'jdoe@example.com' } }

    let(:result) { subject.call(input) }

    it 'is valid' do
      expect(result).to be_success
    end
  end
end
