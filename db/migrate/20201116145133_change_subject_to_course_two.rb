class ChangeSubjectToCourseTwo < ActiveRecord::Migration[6.0]
  def change
    rename_table :subjects,:courses
  end
end
