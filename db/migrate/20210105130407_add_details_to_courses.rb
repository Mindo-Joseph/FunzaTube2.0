class AddDetailsToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :category, :string
    add_column :courses, :price, :integer
    add_column :courses, :description, :string
    add_column :courses, :seats, :integer
    add_column :courses, :schedule, :datetime
  end
end
