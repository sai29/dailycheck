class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	@team_member = current_user.team_members.find_by(email: @email)	
  	answer = @email.body
  	post_form = @team_member.anwsers.new
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
  end

end