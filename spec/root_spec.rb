require 'spec_helper'
require 'toxiproxy'
require 'view'

describe View do
  it "returns something" do
    with_redis_latency do
      msg = View.message
      expect(msg).to be_truthy()
    end
  end
end