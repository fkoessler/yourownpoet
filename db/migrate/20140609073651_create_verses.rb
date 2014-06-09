class CreateVerses < ActiveRecord::Migration
  def change
    create_table :verses do |t|
      t.string :line_one

      t.timestamps
    end
  end
end
