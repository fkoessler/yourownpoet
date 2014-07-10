class AddPoemTitleToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :poem_title, :string
  end
end
