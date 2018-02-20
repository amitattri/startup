class AddBodytextToEmailtemplate < ActiveRecord::Migration
  def change
  	add_column :email_templates, :body_text, :text
  end
end
