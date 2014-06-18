class ChangeBioInDoctors < ActiveRecord::Migration
  def change
  	change_column :doctors, :bio, :text
  end
end
