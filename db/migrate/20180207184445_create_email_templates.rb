class CreateEmailTemplates < ActiveRecord::Migration
  def change
    create_table :email_templates do |t|
      t.integer :template_id
      t.string :member_id
      t.string :status
      t.datetime :send_date
      t.string :member_token
      t.timestamps null: false
    end
  end
end
