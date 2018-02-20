class Car < ApplicationRecord
  belongs_to :dealer
  has_many :leads, dependent: :destroy
  before_save :default_values

  def default_values
  	self.sold ||= false
  end

end
