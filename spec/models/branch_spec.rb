require 'rails_helper'

RSpec.describe Branch, type: :model do
  it { should belong_to(:company).dependent(:destroy) }
  it {should validate_presence_of(:name)}
end
