class CreatePlans < ActiveRecord::Migration[8.1]
  def change
    create_table :plans do |t|
      t.string :classification
      t.belongs_to :provider
      t.belongs_to :client

      t.timestamps
    end
  end
end
