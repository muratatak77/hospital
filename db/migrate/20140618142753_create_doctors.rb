class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :surname
      t.text :consultancy

      t.timestamps
    end
  end
end
