class Company < ApplicationRecord
  serialize :name, Hash, coder: JSON
  has_many :branches
  validates_presence_of :name, :branches_number
end
