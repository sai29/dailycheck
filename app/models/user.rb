class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :team_members
  has_many :answers, :through => :team_member
  has_many :questions, dependent: :destroy

  def self.daily_update
  	@users = User.all
    @users.each do |user|
      @questions = user.questions 
      @team_members = user.team_members                                                                                         
        DailyMailer.daily_mail(@questions, @team_members).deliver
  		
  	end
  end
end
