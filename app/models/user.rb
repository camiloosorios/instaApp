class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one_attached :photo

  has_many :posts, :dependent => :destroy

  validates :name, presence: true
  validates :username, presence: true, uniqueness: true, length: {in: 4..15},
    format: {
      with: /\A[a-z-0-9-A-Z]+\z/,
      message: :invalid
    }
  validates :email, presence: true, uniqueness: true
end
