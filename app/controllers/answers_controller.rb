class AnswersController < ApplicationController
	before_action :authenticate_user!
	
	def index
		@answers = current_user.team_members.each do |team_member|
			team_member.answer.all
		end
	end
  
 

end
