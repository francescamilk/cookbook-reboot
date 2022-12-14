class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string    :name
      t.string    :description
      t.integer   :rating
      t.boolean   :done
      t.timestamps # add 2 columns, `created_at` and `updated_at`
    end
  end
end
