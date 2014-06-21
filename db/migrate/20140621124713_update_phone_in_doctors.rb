class UpdatePhoneInDoctors < ActiveRecord::Migration
  def change
  	change_column :doctors, :phone, :integer
  end
end
