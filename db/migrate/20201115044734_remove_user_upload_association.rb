class RemoveUserUploadAssociation < ActiveRecord::Migration[6.0]
  def change
    remove_foreign_key "uploads", "users"
  end
end
