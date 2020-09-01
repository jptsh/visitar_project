class User < ApplicationRecord
  has_many :business_cards
  has_many :collected_cards
  has_many :notifications, through: :collected_cards
  
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
