class CampaignReportsController < ApplicationController
  before_action :set_report, only: [:index]

  # GET /members
  # GET /members.json
  def index
    
  end

  # GET /members/1
  # GET /members/1.json
  def show
    @campaign_report = CampaignReport.where(secure_token: params[:id]).last
    if @campaign_report.present?
      @campaign_report.update_attributes(status: true)
      if  @campaign_report.campaign.email_template.action_url.present?
        redirect_to @campaign_report.campaign.email_template.action_url
      else
        flash[:success]  = "Thank You for your time"
      end  
    else
      flash[:error] = "Record not present"
      redirect_to root_path
    end  

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_report
      @reports = CampaignReport.where(campaign_id: params[:campaign_id])
    end

end
