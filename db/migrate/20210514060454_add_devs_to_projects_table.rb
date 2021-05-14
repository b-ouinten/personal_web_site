class AddDevsToProjectsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :devs, :integer
  end
end
