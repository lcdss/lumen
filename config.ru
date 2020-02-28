# frozen_string_literal: true

# require 'bundler/setup'
# require 'hanami/api'
# require 'rom'

# configuration = ROM::Configuration.new(:sql, 'sqlite://db.sqlite')
# configuration.auto_registration("#{__dir__}/lib")
# container = ROM.container(configuration)

# class App < Hanami::API
#   get '/' do
#     'Hello, world'
#   end
# end

# run App.new

require_relative 'config/application'

Lumen::Application.finalize!

run Lumen::Web.app
