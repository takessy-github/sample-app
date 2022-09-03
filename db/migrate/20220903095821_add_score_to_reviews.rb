class AddScoreToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :score, :integer, :unsigned => true, :default => 0
  end
end
