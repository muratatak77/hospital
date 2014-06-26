class AddRefencesToDoctors < ActiveRecord::Migration
  def change
    add_reference :doctors, :manager, index: true
  end
end
