class AddBusinessCardNameToBusinessCards < ActiveRecord::Migration[6.0]
  def change
    add_column :business_cards, :name, :string
  end
end
