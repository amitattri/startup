class CreateCampaignReports < ActiveRecord::Migration
  def change
    create_table :campaign_reports do |t|
      t.integer :campaign_id
      t.integer :member_id
      t.string :secure_token
      t.integer :status, default: 0
      t.timestamps null: false
    end
  end
end
