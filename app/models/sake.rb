class Sake < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :type
  belongs_to :user
  has_one_attached :image


  # DEGREE_REGEX = /\A([1-9]\d*|0)\z/
  SAKE_DEGREE_REGEX = /\A[+-]/
  RICE_RATE_REGEX = /[%]\z/
  
  

  with_options presence: true do
    validates :image
    validates :name
    validates :rice_rate
    validates :sake_degree
    validates :type
    validates :degree
    validates :company
  end

  validates :sake_degree, format: { with: SAKE_DEGREE_REGEX, message: 'は最初に+か-を記入してください'}

  validates :rice_rate, format: {with: RICE_RATE_REGEX, message: 'は最後に%を記入してください'}

  validates :degree, numericality: { only_integer: true, grater_than: 0, less_than: 22, message: 'は21以下で入力してください'}


  with_options numericality: { other_than: 1, message: 'を選択してください'} do
    validates :type_id
  end

  def degree=(value)
    value.tr!('０-９', '0-9') if value.is_a?(String)
    super(value)
  end
end
