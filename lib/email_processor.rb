class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
    p @email.from[:email]
  	from1 =  @email.from.to_a.last.last.split.last.gsub(/[<>]/, '')
  	@team_member = TeamMember.find_by(email: @email.from[:email])
    p @team_member	
    p @team_member.inspect
    p @team_member.i
  	answer_form = @team_member.answers.build
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
    puts "Saved"
  end

end









