class AddBioToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :bio, :string
  end
end
