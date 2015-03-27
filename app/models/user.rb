class User < ActiveRecord::Base
	has_secure_password

  validates :username, :email, presence: true

  has_many :relatives
  has_one :family_tree

end
