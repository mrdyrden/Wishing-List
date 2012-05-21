class CreateUserWishes < ActiveRecord::Migration
  def change
    create_table :user_wishes do |t|
      t.integer :user_id, :null => false
      t.integer :wish_id, :null => false

      t.timestamps
    end
  end
end
