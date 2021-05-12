class CreateCommentCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_categories do |t|
      t.string :title

      t.timestamps
    end
  end
end
