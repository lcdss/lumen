# frozen_string_literal: true

module Lumen
  module Contracts
    module Users
      class CreateUser < Dry::Validation::Contract
        EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze

        params do
          required(:name).filled(:string)
          required(:email).filled(:string)
        end

        rule(:email) do
          key.failure('has invalid format') unless EMAIL_REGEX.match?(value)
        end
      end
    end
  end
end
