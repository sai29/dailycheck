class EmailProcessor

	def initialize(email)
    @email = email
  end

  def process
  	from1 =  @email.from.to_a.last.last.split.last.gsub(/[<>]/, '')
    puts from1
    puts from1.class
  	@team_member = TeamMember.find_by(email: from1)	
    puts @team_member
  	answer_form = @team_member.answer.build
  	answer_form.name = @team_member.name
    answer_form.answer = answer
    answer_form.save
    puts "Saved"
  end

end