class Category < ApplicationRecord
  scope :get_category, ->(bmi) { where("? >= start and ? <= end_at", bmi, bmi) }
end
