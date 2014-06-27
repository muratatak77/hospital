class Interest < ActiveRecord::Base
	belongs_to :patient
	default_scope order('data DESC')
end
