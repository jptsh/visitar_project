class CollectedCard < ApplicationRecord
  belongs_to :user
  belongs_to :business_card
end
