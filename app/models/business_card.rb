class BusinessCard < ApplicationRecord
  has_many :collected_cards
  belongs_to :user
end
