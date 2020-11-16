class AddCourseRefToUpload < ActiveRecord::Migration[6.0]
  def change
    add_reference :uploads, :course, null: false, foreign_key: true
  end
end
