class Company < ApplicationRecord
  included LocalizableName

  has_many :branches
  validates_presence_of :name, :branches_number
end
