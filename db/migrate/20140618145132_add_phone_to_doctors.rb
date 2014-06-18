class AddPhoneToDoctors < ActiveRecord::Migration
  def change
  	add_column :doctors, :phone, :string
  end
end
