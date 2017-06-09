class AddModelIdToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :model_id, :integer
  end
end
