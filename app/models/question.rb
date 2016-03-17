class Question < ActiveRecord::Base
  belongs_to :user
  validates :question, presence: true, length: { maximum: 200 }, uniqueness: { case_sensitive: false }
end
