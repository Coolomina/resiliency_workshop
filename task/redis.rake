require_relative '../infrastructure/cache'

namespace :redis do

  redis = Cache.client

  desc 'Populates the redis'
  task :populate do
    redis.set('mykey', 'hello world from redis!')
  end

  desc 'Gets the key'
  task :get do
    puts redis.get('mykey')
  end

end

