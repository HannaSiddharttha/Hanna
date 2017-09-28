module PermissionsConcern
	extend ActiveSupport::Concern

	def is_normal_user?
		self.role >= 1
	end
	def is_boss?
		self.role >= 2
	end
	def is_admin?
		self.role >= 3
	end
end