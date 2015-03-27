class EditChildrenColumnName < ActiveRecord::Migration
  def change
  	rename_column :relatives, :children, :child_one
  end
end
