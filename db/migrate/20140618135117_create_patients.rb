class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name
      t.string :surname
      t.text :bio
      t.integer :doctor_id

      t.timestamps
    end
  end
end
