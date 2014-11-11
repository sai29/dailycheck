class TeamMembersController < ApplicationController
	before_action :authenticate_user!
 
	def index
		@team_members = current_user.team_members
	end

  def new
  	@team_member = TeamMember.new
  end

  def edit
  	@team_member = current_user.team_members.find_by(id: params[:id])	
	end

	def update
		@team_member = current_user.team_members.find_by(id: params[:id])	
		@team_member.update_attributes(team_member_params)
		redirect_to team_members_url
	end
  def create
  	@team_member = current_user.team_members.build(team_member_params)
  	if @team_member.save
  		flash[:notice] = "Team Member has been added!"
  		redirect_to new_team_member_url
		else
			flash[:notice] = "Team Member was not added"
			redirect_to new_team_member_url
		end
	end

  def destroy
  	@team_member = current_user.team_members.find_by(id: params[:id])
  	@team_member.destroy
  	redirect_to team_members_url
	end

  private
  	def team_member_params
  		params.require(:team_member).permit(:name, :email)
  	end

  	
end
