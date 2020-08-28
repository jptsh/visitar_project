class AddStreetnameToBusinessCards < ActiveRecord::Migration[6.0]
  def change
    add_column :business_cards, :streetname, :string
  end
end
