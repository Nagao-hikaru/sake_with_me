class SakeRestaurant < ApplicationRecord
  belongs_to :restaurant
  belongs_to :sake
  belongs_to :user

  # with_options numericality: { greater_than_or_equal_to: 1} do
  #   validates :sake_id
  #   validates :restaurant_id
  # end
end
