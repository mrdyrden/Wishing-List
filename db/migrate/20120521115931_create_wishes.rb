class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :name , :null => false
      t.integer :user_id, :null => false

      t.timestamps
    end
  end
end
