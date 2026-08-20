class RenameTypeToClassificationOnPlans < ActiveRecord::Migration[8.1]
  def change
    rename_column :plans, :type, :classification
  end
end
