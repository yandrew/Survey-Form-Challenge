class Answer < ActiveRecord::Base
	validates :content, presence: true
	# belongs_to :survey
	belongs_to :question
	belongs_to :user
	# has_many :responses
	# has_many :users, :through => :responses
end
