class AddDetailsToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :name , :string
    add_column :resources, :url, :string
  end
end
