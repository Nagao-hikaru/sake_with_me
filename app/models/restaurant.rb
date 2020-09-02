class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture
  belongs_to :user
  has_many_attached :images
  has_many :sake_restaurants, dependent: :destroy
  has_many :sakes, through: :sake_restaurants, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :users, through: :likes, dependent: :destroy
  geocoded_by :address
  after_validation :geocode

  def liked_by?(user)
    likes.where(user_id: user.id).exists?
  end

  with_options presence: true do
    validates :images
    validates :name
    validates :beer
    validates :genre
    validates :prefecture
    validates :address
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :genre_id
    validates :prefecture_id
  end
end
