class AddDepartmanToHospital < ActiveRecord::Migration
  def change
    add_column :hospitals, :departman, :string
  end
end
