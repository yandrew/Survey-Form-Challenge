class Survey < ActiveRecord::Base
	has_many :question
	
	accepts_nested_attributes_for :questions
end
