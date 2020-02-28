# frozen_string_literal: true

require 'hanami/middleware/body_parser'

module Lumen
  module Web
    def self.app
      Rack::Builder.new do
        use Hanami::Middleware::BodyParser, :json
        run Router
      end
    end
  end
end
