class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.text :body
      t.string :subject
      t.string :action_url
      t.attachment :file
      t.timestamps null: false
    end
  end
end
