class DailyMailer < ActionMailer::Base
  default from: "progress@dailycheck.co"


  def daily_mail(questions, team_members)
  	@questions = questions
  	@answers = team_members.each { |team_member| team_member.answers }
  	team_members.each do |team_member|
  	mail(to: email, subject: "Update progress!")
  end
  end


end


