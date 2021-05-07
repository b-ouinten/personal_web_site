class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :title
      t.text :content
      t.belongs_to :category, index: true

      t.timestamps
    end
  end
end