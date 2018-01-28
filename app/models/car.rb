class Car < ApplicationRecord
  belongs_to :dealer
  has_many :leads
end
