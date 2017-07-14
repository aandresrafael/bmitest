class Category < ApplicationRecord
  scope :get_category, ->(bmi) { where("? >= start and ? <= end", bmi, bmi) }
end
