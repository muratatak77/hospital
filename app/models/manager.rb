class Manager < ActiveRecord::Base
	has_many :doctors
	
	def full_name
		"#{name} #{surname}"
	end
end
