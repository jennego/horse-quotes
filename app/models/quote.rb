class Quote < ApplicationRecord
    belongs_to :author 
    has_many :categorizings, dependent: :destroy 
    has_many :categories, through: :categorizings

    accepts_nested_attributes_for :author
    accepts_nested_attributes_for :categorizings
    accepts_nested_attributes_for :categories

end
