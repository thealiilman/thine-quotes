require 'rails_helper'

RSpec.describe Originator, type: :model do
  it { should have_many(:quotes) }
  it { should validate_presence_of(:name) }
end
