class AddPhoneToHousekeepers < ActiveRecord::Migration
  def change
  	add_column :housekeepers, :phone, :string
  end
end
