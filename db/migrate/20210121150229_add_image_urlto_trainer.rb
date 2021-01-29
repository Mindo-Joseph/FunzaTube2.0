class AddImageUrltoTrainer < ActiveRecord::Migration[6.0]
  def change
    add_column :trainers, :imageUrl, :string
  end
end
