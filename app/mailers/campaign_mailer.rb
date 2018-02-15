class  CampaignMailer < ApplicationMailer

	def campaign_invitation(campaign)
	    @campaign_report = CampaignReport.find(campaign.id)

		mail(
	      to: @campaign_report.member.email,
	      subject: @campaign_report.campaign.email_template.subject
		)

    end		
  
end
