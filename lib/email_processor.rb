class EmailProcessor
	def initialize(email)
    @email = email
  end
  def process(email)
     @team_member = TeamMember.find_by_email(@email.from[:email])
    @team_member.anwsers.create!(
      answer: email.body
    )
  end
end