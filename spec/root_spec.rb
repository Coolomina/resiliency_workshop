require 'spec_helper'
require 'view'

describe View do
  it "returns something" do
    msg = View.message
    expect(msg).to be_truthy()
  end
end