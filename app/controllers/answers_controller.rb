class AnswersController < ApplicationController
	before_action :authenticate_user!
	def index
		@answers = current_user.team_members.each do |team_member|
			team_member.answer
		end
	end
  def new

  end

  def create
  	@team_member = current_user.team_members.find_by(email: params[:email])	

  end
end
