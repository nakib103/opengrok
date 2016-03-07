class Projectuser < ActiveRecord::Base

	belongs_to :project, :polymorphic =>true
	belongs_to :user, :polymorphic => true
	validates_uniqueness_of :project_id
	validates_uniqueness_of :user_id
	# searchable do
	# 	text :projectname do 
	# 		project.projectname
	# 	end
	# 	text :username do 
	# 		user.username
	# 	end
	# 	integer :project_id
	# 	integer :user_id
	# end

end
