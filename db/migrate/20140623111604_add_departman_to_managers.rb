class AddDepartmanToManagers < ActiveRecord::Migration
  def change
    add_column :managers, :departman, :string
  end
end
