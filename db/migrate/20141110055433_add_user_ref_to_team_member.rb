class AddUserRefToTeamMember < ActiveRecord::Migration
  def change
    add_reference :team_members, :user, index: true
  end
end
