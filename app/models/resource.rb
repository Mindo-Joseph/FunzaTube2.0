class Resource < ApplicationRecord
  mount_uploader :cloudUrl, ResourcesUploader
end
