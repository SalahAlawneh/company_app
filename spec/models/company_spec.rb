require 'rails_helper'

RSpec.describe Company, type: :model do
  it { should have_many(:branches) }
  it {should validate_presence_of(:name)}
  it {should validate_presence_of(:branches_number)}
end
