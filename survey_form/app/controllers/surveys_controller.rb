class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :answers]
  
	def index
		@questions = Question.order(importance: :asc)
		@user = User.new
		# @survey = Survey.new
		# @survey.build_question

	end

	def create

	end

	private 

	# def survey_params
	# 	params.require(:survey).permit(questions_attributes: [:content, :importance, :question_type])
	# 	params.require(:survey).permit(answers_attributes: :content)
	# end

end