class Review < ApplicationRecord
  belongs_to :professor

  validates :body, presence: true,
  length: { minimum: 2 }

end
