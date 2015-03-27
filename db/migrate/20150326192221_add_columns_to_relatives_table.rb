class AddColumnsToRelativesTable < ActiveRecord::Migration
  def change
  	add_column :relatives, :child_two, :string
  	add_column :relatives, :child_three, :string
  	add_column :relatives, :child_four, :string
  	add_column :relatives, :child_five, :string
  	add_column :relatives, :child_six, :string
  end
end
