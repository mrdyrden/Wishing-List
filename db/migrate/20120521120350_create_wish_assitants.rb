class CreateWishAssitants < ActiveRecord::Migration
  def change
    create_table :wish_assitants do |t|
      t.integer :wish_id, :null => false
      t.integer :assistant_id, :null => false

      t.timestamps
    end
  end
end
