class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.integer :complexity
      t.integer :duration

      t.belongs_to :client, index: true

      t.timestamps
    end
  end
end
