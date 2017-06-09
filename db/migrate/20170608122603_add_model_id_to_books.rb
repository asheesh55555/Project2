class AddModelIdToBooks < ActiveRecord::Migration
  def change
    add_column :books, :model_id, :integer
  end
end
