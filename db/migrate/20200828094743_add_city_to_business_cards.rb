class AddCityToBusinessCards < ActiveRecord::Migration[6.0]
  def change
    add_column :business_cards, :city, :string
  end
end
