require 'rails_helper'

RSpec.describe Quote, type: :model do
  it { should belong_to(:originator) }
  it { should validate_presence_of(:content) }
end
