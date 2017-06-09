class AddModelIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :model_id, :integer
  end
end
