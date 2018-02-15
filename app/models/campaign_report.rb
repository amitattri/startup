class CampaignReport < ActiveRecord::Base
	belongs_to :campaign
	belongs_to :member
end
