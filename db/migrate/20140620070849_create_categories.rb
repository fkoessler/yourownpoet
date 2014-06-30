class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :type
      t.string :name
      t.boolean :active, default: true
      t.integer :sex, default: 0
      t.boolean :fill_the_blank, default: false

      t.timestamps
    end
  end
end