class AddCodeToTags < ActiveRecord::Migration[5.2]
  def change
    add_column :tags, :code, :string
  end
end
