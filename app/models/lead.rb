class Lead < ApplicationRecord
  belongs_to :car
  has_many :tasks, dependent: :destroy
  accepts_nested_attributes_for :tasks
end
