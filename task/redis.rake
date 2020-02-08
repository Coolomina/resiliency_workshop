require 'redis'

namespace :redis do

  host = 'toxi'
  port = 40000
  redis = Redis.new(
    :url => "redis://#{host}:#{port}/0",
    :timeout => 1
  )

  desc 'Populates the redis'
  task :populate do
    redis.set('mykey', 'hello world from redis!')
  end

  desc 'Gets the key'
  task :get do
    puts redis.get('mykey')
  end

end

