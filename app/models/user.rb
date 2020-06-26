class User < ApplicationRecord
  has_many :visits
  has_many :courses, through: :visits
  has_many :holes, through: :courses

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
