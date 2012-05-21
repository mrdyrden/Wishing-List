class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :name , :null => false
      t.integer :owner_id, :null => false

      t.timestamps
    end
  end
end
