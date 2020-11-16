class RemoveTutorFromCourse < ActiveRecord::Migration[6.0]
  def change
    remove_column :courses, :tutor
  end
end
