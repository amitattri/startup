class CampaignGroup < ActiveRecord::Base
	belongs_to :campaign
	belongs_to :group
end
