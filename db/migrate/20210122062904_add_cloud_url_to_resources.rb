class AddCloudUrlToResources < ActiveRecord::Migration[6.0]
  def change
    add_column :resources, :cloudUrl, :string
  end
end
