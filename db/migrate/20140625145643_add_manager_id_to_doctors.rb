class AddManagerIdToDoctors < ActiveRecord::Migration
  def change
  	add_column :doctors, :manager_id, :integer
  end
end
