class ImageElement < ApplicationRecord
  belongs_to :professors
  has_one_attached:image
end
