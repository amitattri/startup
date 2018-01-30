class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :email
      t.integer :group_id
      t.timestamps null: false
    end
  end
end
