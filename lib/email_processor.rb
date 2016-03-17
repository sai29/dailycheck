class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	@team_member = TeamMember.find_by(email: @email.from[:email])
    answer_form = @team_member.answers.build
  	answer_form.name = @team_member.name
    answer_form.answer = @email.body
    individual_answer = @email.body.split(' @')
    answer_form.save
  end

end