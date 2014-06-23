class AddDiseaseToPatients < ActiveRecord::Migration
  def change
  	add_column :patients, :disease, :string
  end
end
