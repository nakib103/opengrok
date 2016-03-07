class User < ActiveRecord::Base

	validates :username,:presence => true
	validates_uniqueness_of :username
	has_many :projectusers
	has_many :projects , :through => :projectusers

	def self.search(search)
		if search
			where(['username LIKE ? OR firstname LIKE ? OR email LIKE ?', "%#{search}%","%#{search}%","%#{search}%"])
		else
			scoped
		end
	end
end
