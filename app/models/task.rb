class Task < ApplicationRecord
  belongs_to :lead
  before_save :default_values

  def default_values
  	self.open ||= true
  end
end
