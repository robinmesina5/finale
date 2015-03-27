class CreateFamilyTrees < ActiveRecord::Migration
  def change
    create_table :family_trees do |t|
      t.string :name
      t.integer :user_id
      t.integer :relative_id

      t.timestamps null: false
    end
  end
end
