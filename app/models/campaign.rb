class Campaign < ActiveRecord::Base
	belongs_to :email_template

	has_many :groups, through: :campaign_groups
	has_many :campaign_groups, dependent: :destroy
end
