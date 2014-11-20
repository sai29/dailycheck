class AnswersController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@answers = Answer.all
	end

	def show
		@team_member = TeamMember.find_by(email: params[:email])
		@answer = @team_member.answers
	end
 
end
