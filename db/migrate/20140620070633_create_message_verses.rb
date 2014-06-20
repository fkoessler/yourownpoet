class CreateMessageVerses < ActiveRecord::Migration
  def change
    create_table :message_verses do |t|

      t.timestamps
    end
  end
end
