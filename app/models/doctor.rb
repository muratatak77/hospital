class Doctor < ActiveRecord::Base
	has_many :patients
	belongs_to :manager

	def full_name
		"#{name} #{surname}"
	end

end
