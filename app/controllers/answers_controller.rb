class AnswersController < ApplicationController

	def index
		@answers = current_user.team_members.answers
	end
  def new

  end

  def create
  	@team_member = current_user.team_members.find_by(email: params[:email])	
  	
  end
end
