require 'rails_helper'

RSpec.describe Sermon, :type => :model do

  it { should validate_presence_of(:speaker) }
  it { should validate_presence_of(:subject) }
  it { should validate_presence_of(:day) }

end
