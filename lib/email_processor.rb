class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	from1 =  @email.from.to_a.last.last.split.last.gsub(/[<>]/, '')
    p from1
    p from1.inspect
    p from1.class
  	@team_member = TeamMember.find_by(email: from1)
    p @team_member	
    p @team_member.inspect
  	answer_form = @team_member.answer.build
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
    puts "Saved"
  end

end