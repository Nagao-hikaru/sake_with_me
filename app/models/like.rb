class Like < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user

  validates :user_id, presence: true, uniqueness: {scope: :restaurant_id}
  validates :restaurant_id, presence: true
end
