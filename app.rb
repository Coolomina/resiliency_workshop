require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'lib/view'

get '/' do
  msg = View.message
  status 200
  body msg
end