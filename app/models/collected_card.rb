class CollectedCard < ApplicationRecord
  belongs_to :user
  belongs_to :business_card
  has_many :notifications
end
