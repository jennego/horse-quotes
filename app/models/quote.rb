class Quote < ApplicationRecord
    has_many :categories 
    belongs_to :author 
end
