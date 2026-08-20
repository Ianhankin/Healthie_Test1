class CreateJournals < ActiveRecord::Migration[8.1]
  def change
    create_table :journals do |t|
      t.string :text
      t.belongs_to :client

      t.timestamps
    end
  end
end
