class DailyMailer < ActionMailer::Base
  default from: "dailycheck@sendgrid.me"


  def dailymail(email)
  	mail(to: email, subject: "Update progress!")
  end


end


