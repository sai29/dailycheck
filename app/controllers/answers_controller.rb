class AnswersController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@answers = Answer.all
		end
	end

	def show
		@team_member = TeamMember.find_by(email: params[:email])
		@answer = @team_member.answers
	end
  
  def new
  end

  def create
  	@team_member = current_user.team_members.find_by(email: params[:email])	
  end
end
