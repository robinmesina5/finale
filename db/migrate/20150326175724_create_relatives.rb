class CreateRelatives < ActiveRecord::Migration
  def change
    create_table :relatives do |t|
      t.string :first_name
      t.string :last_name
      t.integer :tree_id
      t.string :address
      t.integer :age
      t.string :birthday
      t.string :date_of_death
      t.string :father
      t.string :mother
      t.string :children
      t.string :occupation
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
