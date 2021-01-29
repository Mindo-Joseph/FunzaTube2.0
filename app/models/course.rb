class Course < ApplicationRecord
  belongs_to :trainer
  has_one_attached :image
end
