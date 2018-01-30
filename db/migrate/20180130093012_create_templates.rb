class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.text :body
      t.string :subject
      t.string :active_link
      t.timestamps null: false
    end
  end
end
