class Category < ApplicationRecord
  has_and_belongs_to_many :products
  belongs_to :parent_category, class_name: 'Category', optional: true
  has_many :children, class_name: 'Category', foreign_key: 'parent_category_id'
end
