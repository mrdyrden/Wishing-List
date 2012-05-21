class CreateHobbies < ActiveRecord::Migration
  def change
    create_table :hobbies do |t|
      t.string :name, :null => false, :unique => true

      t.timestamps
    end
  end
end
