class Doctor < ActiveRecord::Base
	has_many :patients, dependent: :destroy

	def full_name
		"#{name} #{surname}"
	end

	def self.full_name
		puts "Hotturu"
	end

end
