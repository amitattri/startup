require 'securerandom'
namespace :template do
  desc 'Send  Email Template to User for the present day'
  task email_template: :environment do
  	@email_templates = GroupTemplate.where(:send_at => Date.today)

  	if @email_templates.present?
  		@email_templates.each do |template|
        # find the associated group
  			group = Group.find(template.group_id)

        group.members.each do |member|
          @email_template = EmailTemplate.new(template_id: template.template_id, member_id: member.id, member_token: SecureRandom.hex(), send_date: Date.today, status: "queued")
          if @email_template.save  
            TemplateMailer.send_template(@email_template)
          else
            puts "something went wrong" 
          end   
        end  
  		end	
    end
  end
end
