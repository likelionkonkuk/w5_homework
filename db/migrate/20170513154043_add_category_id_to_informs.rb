class AddCategoryIdToInforms < ActiveRecord::Migration
  def change
    add_column :informs, :category_id, :integer
  end
end
