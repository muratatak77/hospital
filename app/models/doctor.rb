class Doctor < ActiveRecord::Base
	has_many :patients, dependent: :destroy
	belongs_to :manager

	def full_name
		"#{name} #{surname}"
	end

	def self.full_name
		puts "Hotturu"
	end

end
