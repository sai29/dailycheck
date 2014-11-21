class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :team_members
  has_many :answers, :through => :team_member

  def self.daily_update
  	@users = User.all
  	@users.each do |user|
  		user.team_members.each do |team_member|
  			  DailyMailer.daily_mail(team_member.email).deliver
  			end
  	end
  end
end
