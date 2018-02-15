class CampaignsController < ApplicationController
	before_action :set_campaign, only: [:show, :edit, :update, :destroy, :start_campaign]

  # GET /groups
  # GET /groups.json
  def index
    @campaigns = Campaign.all
  end

  # GET /groups/1
  # GET /groups/1.json
  def show
  end

  # GET /groups/new
  def new
    @campaign = Campaign.new
  end

  # GET /groups/1/edit
  def edit
  end

  # POST /groups
  # POST /groups.json
  def create
    @campaign = Campaign.new(campaign_params)
    @groups = params[:groups]
    respond_to do |format|
      if @campaign.save
        @groups.each do |group_id|
          @campaign.campaign_groups.create(group_id: group_id)
        end  
        format.html { redirect_to campaigns_path, notice: 'Campaign was successfully created.' }
        format.json { render :show, status: :created, location: @campaign }
      else
        format.html { render :new }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /groups/1
  # PATCH/PUT /groups/1.json
  def update
    respond_to do |format|
      if @campaign.update(campaign_params)
        format.html { redirect_to campaigns_path, notice: 'Campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @campaign }
      else
        format.html { render :edit }
        format.json { render json: @campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  def start_campaign
    @campaign.campaign_groups.each do |campaigns|
      campaigns.group.members.each do |member|
        campaign_report = CampaignReport.create(member_id: member.id, campaign_id: @campaign.id, secure_token: SecureRandom.hex(10))
        CampaignMailer.campaign_invitation(campaign_report).deliver_later
      end  
    end 

    if @campaign.update_attributes(status: true)
      respond_to do |format|
        format.html { redirect_to campaigns_path, notice: 'Campaign was successfully destroyed.' }
        format.json { head :no_Cantent }
      end
    else

      format.html { render :index }
      format.json { render json: @campaign.errors, status: :unprocessable_entity }
    end   
  end   

  # DELETE /groups/1
  # DELETE /groups/1.json
  def destroy
    @campaign.destroy
    respond_to do |format|
      format.html { redirect_to campaigns_url, notice: 'Campaign was successfully destroyed.' }
      format.json { head :no_Cantent }
    end
  end

  private
    # Use callbacks to share Cammon setup or Canstraints between actions.
    def set_campaign
      @campaign = Campaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def campaign_params
      params.require(:campaign).permit(:email_template_id, :send_at, :group_id, :name, :description)
    end
end
