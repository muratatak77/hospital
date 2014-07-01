class AddPatientIdToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :patient_id, :integer
  end
end
