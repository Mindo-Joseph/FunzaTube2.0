class AddImageUrlToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :imageUrl, :string
  end
end
