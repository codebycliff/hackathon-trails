class Path < ApplicationRecord
  belongs_to :trail

  validates :duration, presence: true
  validates :direction, numericality: { greater_than_or_equal_to: 0, less_than: 360 }
end
