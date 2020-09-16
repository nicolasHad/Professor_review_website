class Professor < ApplicationRecord

    has_many :reviews
    has_many :likes, dependent: :destroy
    has_many :dislikes, dependent: :destroy

    has_one_attached:image_elements


    validates :name, presence: true,
                    length: { minimum: 2 }
    validates :department, presence: true,
                    length: { minimum: 2 }  
                    
    validates :name, :presence => true, :uniqueness => true 

    def self.search(search)
        if search
            where(["name LIKE ? OR department LIKE ?","%#{search}%","%#{search}%"])
        else
            all
        end
        
    end
    
    

                   
  
end
