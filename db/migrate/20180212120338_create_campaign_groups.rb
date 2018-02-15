class CreateCampaignGroups < ActiveRecord::Migration
  def change
    create_table :campaign_groups do |t|
      t.integer :group_id
      t.integer :campaign_id
      t.boolean :status, default: false
      t.timestamps null: false
    end
  end
end
