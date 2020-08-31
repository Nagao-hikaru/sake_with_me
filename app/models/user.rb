class User < ApplicationRecord
  has_many :restaurants
  has_many :sakes
  has_many :sake_restaurants
  has_many :likes, dependent: :destroy
  has_many :like_restaurants, through: :likes, source: :restaurant

  # ユーザーは複数のレストランのいいねを持っている。そのいいねは何かの飲食店に所属している。has_many restaurants through: :likesとしてしまうとアソシエーションかぶりでエラーが起きる。そのため名前を変更しなければならない。しかしそのままではどのテーブルを参照しているのかわからないためsourceオプションを設定して関連づけるテーブルを指定する。

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i.freeze
  validates :name, presence: true

  validates :password, format: { with: PASSWORD_REGEX, message: '半角英数字混合で記入してください' }

  def already_liked?(restaurant)
    likes.exists?(restaurant_id: restaurant.id)
  end
end
