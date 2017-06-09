class Book < ActiveRecord::Base
	belongs_to :model
	 acts_as_commentable
end
