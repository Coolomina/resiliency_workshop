require_relative '../infrastructure/cache'

module View
  class << self 
    def message
      Cache.client.get('mykey')
    end
  end
end