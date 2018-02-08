class Template < ActiveRecord::Base
	has_many :groups,  through: :group_templates

	has_many :group_templates, dependent: :destroy
	
end
