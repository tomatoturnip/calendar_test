require 'rails_helper'

RSpec.describe Sermon, :type => :model do

  it "should have a speaker" do
    sermon = Sermon.new
    expect(sermon.speaker).to eq("Jones")
  end
end
