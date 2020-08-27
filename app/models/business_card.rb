class BusinessCard < ApplicationRecord
  has_many :collected_cards, dependent: :destroy
  belongs_to :user
end
