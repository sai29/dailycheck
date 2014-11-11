class AddNameToTeamMember < ActiveRecord::Migration
  def change
    add_column :team_members, :name, :string
  end
end
