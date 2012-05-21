class CreateWishAssitants < ActiveRecord::Migration
  def change
    create_table :wish_assitants do |t|
      t.integer :wish_id
      t.integer :assistant_id

      t.timestamps
    end
  end
end
