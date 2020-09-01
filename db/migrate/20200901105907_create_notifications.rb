class CreateNotifications < ActiveRecord::Migration[6.0]
  def change
    create_table :notifications do |t|
      t.references :collected_card, null: false, foreign_key: true

      t.timestamps
    end
  end
end
