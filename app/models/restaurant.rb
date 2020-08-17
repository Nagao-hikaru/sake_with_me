class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture


  belongs_to :user
  has_one_attached :image
end
