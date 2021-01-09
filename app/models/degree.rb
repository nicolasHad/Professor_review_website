class Degree < ApplicationRecord

    has_many:degree_reviews

    validates :code, presence: true,
            length: { minimum: 2 }
    validates :title, presence: true,
            length: { minimum: 2 }  
    
    validates :code, :presence => true, :uniqueness => true 


    def self.search(search)
        if search
            where(["code LIKE ? OR title LIKE ?","%#{search}%","%#{search}%"])
        else
            all
        end
        
    end

end
