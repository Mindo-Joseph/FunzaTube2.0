class AddUserToUploads < ActiveRecord::Migration[6.0]
  def change
    add_reference :uploads, :users, foreign_key: true
  end
end
