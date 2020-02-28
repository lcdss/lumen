# frozen_string_literal: true

require_relative 'config/application'
require 'rom-sql'
require 'rom/sql/rake_task'

namespace :db do
  task :setup do
    Lumen::Application.start(:db)

    container = Lumen::Application['db.config']

    ROM::SQL::RakeSupport.env = ROM.container(container) do |config|
      config.gateways[:default].use_logger(Logger.new($stdout))
    end
  end
end
