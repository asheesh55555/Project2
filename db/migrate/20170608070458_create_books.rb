class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :location
      t.string :created_by
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
