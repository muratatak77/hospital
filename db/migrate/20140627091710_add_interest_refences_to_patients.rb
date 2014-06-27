class AddInterestRefencesToPatients < ActiveRecord::Migration
  def change
    add_reference :patients, :interest, index: true
  end
end
