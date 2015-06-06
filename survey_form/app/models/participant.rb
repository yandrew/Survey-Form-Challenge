class Participant < ActiveRecord::Base
	has_many :selections
	has_many :answers, through: :selections
  has_many :questions, through: :answers
end
