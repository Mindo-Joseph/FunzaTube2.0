class AddTrainersReferenceToCourses < ActiveRecord::Migration[6.0]
  def change
    add_reference :courses, :trainer, null: false, foreign_key: true
  end
end
