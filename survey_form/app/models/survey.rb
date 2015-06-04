class Survey < ActiveRecord::Base
	has_many :question
	
	accepts_nested_attributes_for :question, :answers
end
