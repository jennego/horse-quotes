class Category < ApplicationRecord
    has_many :multicategories, dependent: :destroy 
    has_many :quotes, through: :multicategories
end
