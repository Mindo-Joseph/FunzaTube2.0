class ChangeCoursesToUploads < ActiveRecord::Migration[6.0]
  def change
    rename_table :courses,:uploads
  end
end
