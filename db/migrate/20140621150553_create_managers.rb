class CreateManagers < ActiveRecord::Migration
  def change
    create_table :managers do |t|
      t.string :name
      t.string :surname
      t.integer :phone

      t.timestamps
    end
  end
end
