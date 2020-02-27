require 'bundler/setup'
require_relative 'app'
require_relative 'infrastructure/logs'

run Sinatra::Application

Logs.logger.info("Application started on env #{ENV['APP_ENV']}")