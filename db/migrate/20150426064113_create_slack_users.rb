class CreateSlackUsers < ActiveRecord::Migration
  def change
    create_table :slack_users do |t|
      t.string :slack_id, null: false
      t.string :name, null: false
      t.boolean :deleted, null: false
      t.string :color
      t.text :profile, null: false
      t.boolean :is_admin
      t.boolean :is_owner
      t.boolean :is_primary_owner
      t.boolean :is_restricted
      t.boolean :is_ultra_restricted
      t.boolean :has_2fa # this won't show up for non-admin users
      t.boolean :has_files

      t.timestamps null: false
    end
  end
end
