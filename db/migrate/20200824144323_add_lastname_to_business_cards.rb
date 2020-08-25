class AddLastnameToBusinessCards < ActiveRecord::Migration[6.0]
  def change
    add_column :business_cards, :lastname, :string
  end
end
