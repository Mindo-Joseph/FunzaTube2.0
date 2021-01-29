class Video < ApplicationRecord

  belongs_to :trainer
  include AlgoliaSearch
  algoliasearch do
    attributes :name, :url, :trainer_id
    searchableAttributes ['name']
  end
end
