class  TemplateMailer < ApplicationMailer

	def send_template(email_template)
		@user = User.find(email_template.member_id)
		@template = Template.find(email_template.template_id)

		mail(
      to: @user.email
      subject: @template.subject
		)

  end		
  
end