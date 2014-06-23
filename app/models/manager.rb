class Manager < ActiveRecord::Base

	DEPARTMANS = ["Pazarlama","Muhasebe","Satin Alma"]

	def full_name
		"#{name}  #{surname} #{phone}  #{departman}"
	end
	
end
