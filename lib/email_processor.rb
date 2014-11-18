class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	@team_member = TeamMember.find_by(email: @email.from.to_s)	
  	answer = @email.body
  	answer = Answer.new
  	answer_form = @team_member.answer.build
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
    puts "Saved"
  end

end