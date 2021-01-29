class Trainer < ApplicationRecord
  serialize :social_sites
  has_many :courses
  has_many :video
  has_one_attached :displayPhoto
end
