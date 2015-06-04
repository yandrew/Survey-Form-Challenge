class Question < ActiveRecord::Base
	validates :content, presence: true
	
	has_many :answers
	has_many :users, :through => :answers

	accepts_nested_attributes_for :answers
end