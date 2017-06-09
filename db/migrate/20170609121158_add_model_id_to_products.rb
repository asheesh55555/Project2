class AddModelIdToProducts < ActiveRecord::Migration
  def change
    add_column :products, :model_id, :integer
  end
end
