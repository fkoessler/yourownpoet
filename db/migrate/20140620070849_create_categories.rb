class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :active
      t.integer :sex
      t.boolean :fill_the_blank

      t.timestamps
    end
  end
end
