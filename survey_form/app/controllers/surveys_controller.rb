class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :answers]

	def index
		@questions = Question.order(importance: :asc)
		@user = User.new
		# @survey = Survey.new
		# @survey.build_question

	end

	def answers
    @users = User.all
    @questions = @survey.questions
  end

	private 

	def survey_params
    params.require(:survey).permit(:name,
      :questions_attributes => [:id, :content,
        :answers_attributes => [:id, :content, :participant_id]
      ])
  end

end