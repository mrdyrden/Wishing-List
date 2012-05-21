class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :name
      t.integer :owner_id

      t.timestamps
    end
  end
end
