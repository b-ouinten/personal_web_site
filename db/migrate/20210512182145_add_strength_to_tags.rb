class AddStrengthToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :strength, :integer
  end
end
