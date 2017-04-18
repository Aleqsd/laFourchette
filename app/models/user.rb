class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :restaurants
  has_many :comments
  has_attachment :avatar, accept: [:jpg, :png, :jpeg]

  validates :username, presence: true, uniqueness: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
