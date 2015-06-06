class Answer < ActiveRecord::Base
  has_many :selections
  has_many :participants, through: :selections
end
