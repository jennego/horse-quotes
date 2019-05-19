class Category < ApplicationRecord
    has_many :categorizings, dependent: :destroy 
    has_many :quotes, through: :categorizings

end
