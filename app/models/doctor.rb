class Doctor < ActiveRecord::Base
	
	def full_name
		"#{name} #{surname}"
	end

	def self.full_name
		puts "Hotturu"
	end

end
