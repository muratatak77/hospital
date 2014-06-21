class Patient < ActiveRecord::Base

def regards
	"#{full_name} gecmis olsun.. nish medical"
end

private
	
	def full_name
		"#{name} #{surname}"
	end

	

end
