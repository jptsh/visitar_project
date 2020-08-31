class BusinessCard < ApplicationRecord
  has_one_attached :photo
  has_many :collected_cards, dependent: :destroy
  belongs_to :user
end
