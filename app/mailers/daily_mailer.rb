class DailyMailer < ActionMailer::Base
  default from: "dailycheck@sendgrid.me"


  def daily_mail(email)
  	mail(to: email, subject: "Update progress!")
  end


end


