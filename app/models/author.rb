class Author < ApplicationRecord
    has_many :quotes 

    

    def full_name 
        "#{author_first} #{author_last}"
    end  
end
