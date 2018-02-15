class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string :name
      t.text :description	
      t.integer :email_template_id
      t.integer :group_id
      t.date :send_at
      t.timestamps null: false
    end
  end
end
