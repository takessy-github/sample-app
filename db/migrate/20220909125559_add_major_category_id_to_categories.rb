class AddMajorCategoryIdToCategories < ActiveRecord::Migration[7.0]
  def change
    add_reference :categories, :major_category, foreign_key: true
  end
end
