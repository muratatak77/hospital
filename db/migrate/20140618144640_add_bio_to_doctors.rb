class AddBioToDoctors < ActiveRecord::Migration
  def change
  	add_column :doctors, :bio, :string
  end
end
