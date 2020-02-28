# frozen_string_literal: true

module Lumen
  module Relations
    class Users < ROM::Relation[:sql]
      schema(:users, infer: true)
    end
  end
end
