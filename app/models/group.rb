class Group < ActiveRecord::Base
	
	has_many :members, dependent: :destroy

	has_many :templates,  through: :group_templates
	has_many :group_templates, dependent: :destroy

end
