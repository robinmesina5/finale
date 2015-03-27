class TreeRole < ActiveRecord::Base

	has_many :users
	has_many :family_trees

end
