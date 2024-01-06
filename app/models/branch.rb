class Branch < ApplicationRecord
  included LocalizableName

  belongs_to :company, dependent: :destroy
  validates_presence_of :name
  after_create :increment_branches_number
  after_destroy :decrement_branches_number

  private
  def increment_branches_number
    company.increment!(:branches_number)
  end
  def decrement_branches_number
    company.decrement!(:branches_number)
  end
end
