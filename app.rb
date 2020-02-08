require 'sinatra'
require_relative 'infrastructure/cache'
require_relative 'lib/view'


get '/' do
  msg = View.message
  status 201
  body msg 
end