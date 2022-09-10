class AddRecommendedFlagToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :recommended_flag, :boolean, default: false
  end
end
