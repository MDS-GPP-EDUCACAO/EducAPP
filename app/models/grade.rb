class Grade < ActiveRecord::Base
	def self.grade_id_by_description(description)
		grade_id = Grade.where(:id => description).first.id
	end
end
