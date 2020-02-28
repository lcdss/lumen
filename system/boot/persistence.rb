# frozen_string_literal: true
require 'byebug'

Lumen::Application.boot(:persistence) do |app|
  start do
    config = app['db.config']
    config.auto_registration(app.root + 'lib/lumen')

    register('container', ROM.container(config))
  end
end
