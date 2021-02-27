class Modreview < ApplicationRecord
  belongs_to :unimodule
  
  validates :body, presence: true,
  length: { minimum: 2 }

end
