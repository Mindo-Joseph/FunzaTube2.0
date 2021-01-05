class Trainer < ApplicationRecord
  serialize :social_sites
  has_many :courses
end
