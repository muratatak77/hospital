class AddColumnInterestToPatients < ActiveRecord::Migration
  def change
  	add_column :patients , :interest, :string
  end
end
