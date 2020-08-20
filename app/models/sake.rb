class Sake < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :type
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :image
    validates :nema
    validates :rice_rate
    validates :sake_degree
    validates :type
    validates :degree
    validates :company
    validates :rice
  end

  with_options numericality: { other_than: 1, message: 'を選択してください'} do
    validates :type_id
  end
end
