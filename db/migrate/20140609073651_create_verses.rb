class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :line_one
      t.string :line_two
      t.string :line_three
      t.string :line_four
      t.string :line_five
      t.boolean :active
      t.integer :sex
      
      t.timestamps
    end
  end
end
