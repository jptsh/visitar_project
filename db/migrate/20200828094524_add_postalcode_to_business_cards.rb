class AddPostalcodeToBusinessCards < ActiveRecord::Migration[6.0]
  def change
    add_column :business_cards, :postalcode, :integer
  end
end
