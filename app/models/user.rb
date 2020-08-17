class User < ApplicationRecord
  has_many :restaurants
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :name, presence: true

  validates :password, format: { with: PASSWORD_REGEX, message: '半角英数字混合で記入してください' }
end
