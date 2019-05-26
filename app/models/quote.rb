class Quote < ApplicationRecord
    belongs_to :author
    has_many :multicategories, dependent: :destroy 
    has_many :categories, through: :multicategories

    accepts_nested_attributes_for :author
    accepts_nested_attributes_for :categories

    def next 
        Quote.where("id > ?", id).limit(1).first
    end

    def prev
        Quote.where("id < ?", id).limit(1).first
    end

    def category_list
        categories.map(&:category).join(', ')
    end
end
