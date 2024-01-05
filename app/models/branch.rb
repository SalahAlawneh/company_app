class Branch < ApplicationRecord
  serialize :name, Hash, coder: JSON
  belongs_to :company, dependent: :destroy
  validates_presence_of :name
end
