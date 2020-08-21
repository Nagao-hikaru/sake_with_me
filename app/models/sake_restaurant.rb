class SakeRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :sake
end
