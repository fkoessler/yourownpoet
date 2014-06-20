class CreateTraitCategories < ActiveRecord::Migration
  def change
    create_table :trait_categories do |t|

      t.timestamps
    end
  end
end
