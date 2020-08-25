class Restaurant < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :genre
  belongs_to_active_hash :prefecture
  belongs_to :user
  has_one_attached :image
  has_many :sake_restaurants, dependent: :destroy
  has_many :sakes, through: :sake_restaurants, dependent: :destroy

  with_options presence: true do
    validates :image
    validates :name
    validates :beer
    validates :genre
    validates :prefecture
    validates :city
    validates :address
  end

  with_options numericality: { other_than: 1, message: 'を選択してください' } do
    validates :genre_id
    validates :prefecture_id
  end
end
