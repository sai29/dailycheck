class DailyMailer < ActionMailer::Base
  default from: "progress@dailycheck.co"


  def daily_mail(email)
  	mail(to: email, subject: "Update progress!")
  end


end


