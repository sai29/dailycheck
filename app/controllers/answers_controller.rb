class AnswersController < ApplicationController
	before_action :authenticate_user!
	
	def index
		team_member_ids = current_user.team_member_ids
		@answers = Answer.where("team_member_id IN (:team_member_ids)", team_member_ids: team_member_ids)
	end

 

end
