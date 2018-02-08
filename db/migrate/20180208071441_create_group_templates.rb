class CreateGroupTemplates < ActiveRecord::Migration
  def change
    create_table :group_templates do |t|
      t.integer :group_id
      t.integer :template_id
      t.datetime :send_at
      t.timestamps null: false
    end
  end
end
