class SakeRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :sake
  belongs_to :user
end
