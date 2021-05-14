class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :code
      t.text :description
      t.integer :complexity
      t.integer :duration
      t.integer :devs
      t.string :my_role
      t.string :link
      t.string :git_repo

      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end
