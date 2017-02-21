class Route < ApplicationRecord
  belongs_to :trail
  belongs_to :transit
end
