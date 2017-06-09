class Blog < ActiveRecord::Base
	acts_as_commentable
	belongs_to :model
end
