class Relative < ActiveRecord::Base

	belongs_to :family_tree
	belongs_to :user # is this right?

end
