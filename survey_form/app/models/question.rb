class Question < ActiveRecord::Base
	validates :content, presence: true
	belongs_to :survey
	has_many :answers
	has_many :users, :through => :answers


end