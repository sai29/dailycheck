class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	from1 =  @email.from.split.last.gsub(/[<>]/,'')
  	@team_member = TeamMember.find_by(email: from)	
  	answer_form = @team_member.answer.build
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
    puts "Saved"
  end

end