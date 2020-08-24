class CreateCollectedCards < ActiveRecord::Migration[6.0]
  def change
    create_table :collected_cards do |t|
      t.references :user, null: false, foreign_key: true
      t.references :business_card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
