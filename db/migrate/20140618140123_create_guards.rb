class CreateGuards < ActiveRecord::Migration
  def change
    create_table :guards do |t|
      t.string :name
      t.string :surname
      t.integer :age

      t.timestamps
    end
  end
end
