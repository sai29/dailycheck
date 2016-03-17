class TeamMember < ActiveRecord::Base
	belongs_to :user
	has_many :answers
	validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { maximum:50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	
end
