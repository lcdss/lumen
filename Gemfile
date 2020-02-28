# frozen_string_literal: true

source 'https://rubygems.org'

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

ruby '~> 2.7.0'

gem 'puma'

gem 'dry-auto_inject', '~> 0.7.0'
gem 'dry-monads', '~> 1.3'
gem 'dry-system', '~> 0.17.0'
gem 'dry-validation', '~> 1.4'

gem 'hanami-controller', '~> 1.3'
gem 'hanami-router', '~> 1.3'

gem 'dotenv', '~> 2.7'
gem 'rake', '~> 13.0'

gem 'pg', '~> 1.2'
gem 'rom', '~> 5.2'
gem 'rom-sql', '~> 3.2'

group :development do
  gem 'rubocop', require: false
end

group :development, :test do
  gem 'byebug', require: false
end

group :test do
  gem 'database_cleaner-sequel'
  gem 'rack-test'
  gem 'rspec'
end
