class Manager < ActiveRecord::Base
	has_many :doctors, dependent: :destroy
	has_many :housekeepers
	DEPARTMANS = ["Pazarlama","Muhasebe","Satin Alma"]

	def full_name
		"#{name}  #{surname} #{phone}  #{departman}"
	end
	
end
