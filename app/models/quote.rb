class Quote < ApplicationRecord
    has_many :categories 
    belongs_to :author 

    accepts_nested_attributes_for :categories
    accepts_nested_attributes_for :author

end
