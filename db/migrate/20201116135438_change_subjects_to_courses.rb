class ChangeSubjectsToCourses < ActiveRecord::Migration[6.0]
  def change
    rename_table :uploads, :courses
  end
end
