class CreateTraitVerses < ActiveRecord::Migration
  def change
    create_table :trait_verses do |t|

      t.timestamps
    end
  end
end
