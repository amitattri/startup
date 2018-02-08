class CreateMembers < ActiveRecord::Migration
  def change
    create_table :members do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :group_id
      t.timestamps null: false
    end
  end
end
