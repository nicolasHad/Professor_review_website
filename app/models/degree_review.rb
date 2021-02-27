class DegreeReview < ApplicationRecord
  belongs_to :degree

  validates :body, presence: true,
  length: { minimum: 2 }
  
end
