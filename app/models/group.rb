class Group < ActiveRecord::Base
	
	has_many :members, dependent: :destroy
	has_many :campaigns, through: :campaign_groups
    has_many :campaign_groups, dependent: :destroy

end
