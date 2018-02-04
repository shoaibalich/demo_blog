class Lead < ApplicationRecord
  belongs_to :car
  has_many :tasks, dependent: :destroy
end
