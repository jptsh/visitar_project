class CreateBusinessCards < ActiveRecord::Migration[6.0]
  def change
    create_table :business_cards do |t|
      t.string :firstname
      t.string :company
      t.string :email
      t.string :phone
      t.string :jobtitle
      t.string :website
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
