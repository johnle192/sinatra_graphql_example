class CreateRecipesTable < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description
      t.integer :prep_time_minutes
      t.integer :cook_time_minutes
      t.timestamps
    end
  end
end
