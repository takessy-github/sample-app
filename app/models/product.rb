class Product < ApplicationRecord
  belongs_to :category
  has_many :
  
  def reviews_new
    reviews.new
  end
end
