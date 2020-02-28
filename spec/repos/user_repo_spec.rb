require 'spec_helper'

RSpec.describe Lumen::Repos::UserRepo do
  context '#create' do
    it 'creates a user' do
      user = subject.create(
        name: 'John Doe',
        email: 'jdoe@example.com',
      )

      expect(user).to be_a(Lumen::User)
      expect(user.id).not_to be_nil
      expect(user.name).to eq('John Doe')
      expect(user.email).to eq('jdoe@example.com')
      expect(user.created_at).not_to be_nil
      expect(user.updated_at).not_to be_nil
    end
  end

  context '#all' do
    before do
      subject.create(name: 'John Doe', email: 'jdoe@example.com')
    end

    it 'returns all users' do
      users = subject.all
      expect(users.count).to eq(1)
      expect(users.first).to be_a(Lumen::User)
    end
  end
end
