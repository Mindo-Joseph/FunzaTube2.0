class CreateTrainers < ActiveRecord::Migration[6.0]
  def change
    create_table :trainers do |t|
      t.string :name
      t.string :category
      t.text :tagline
      t.text :social_sites

      t.timestamps
    end
  end
end
