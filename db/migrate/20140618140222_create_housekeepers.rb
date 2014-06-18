class CreateHousekeepers < ActiveRecord::Migration
  def change
    create_table :housekeepers do |t|
      t.string :name
      t.string :surname
      t.integer :age

      t.timestamps
    end
  end
end
