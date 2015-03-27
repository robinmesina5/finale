class CreateTreeRoles < ActiveRecord::Migration
  def change
    create_table :tree_roles do |t|
      t.integer :family_id
      t.integer :user_id
      t.string :role

      t.timestamps null: false
    end
  end
end
