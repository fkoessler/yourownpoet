class CreateIntroVerses < ActiveRecord::Migration
  def change
    create_table :intro_verses do |t|

      t.timestamps
    end
  end
end