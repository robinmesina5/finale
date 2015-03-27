class FamilyTree < ActiveRecord::Base

	belongs_to :user
	has_many :relatives

	# do I need joins here?

end
