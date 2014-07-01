class AddInterestIdToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :interest_id, :integer
  end
end
