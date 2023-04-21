class Exercise < ApplicationRecord
  belongs_to :muscle
  validates :name, :description, presence: true
end
