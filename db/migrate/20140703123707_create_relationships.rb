class CreateRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.string :name
      t.string :male_mirror
      t.string :female_mirror
      t.integer :category, default: 0
      t.integer :sex, default: 0

      t.timestamps
    end
  end
end
