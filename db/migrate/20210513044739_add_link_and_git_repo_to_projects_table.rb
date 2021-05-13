class AddLinkAndGitRepoToProjectsTable < ActiveRecord::Migration[5.2]
  def change
    add_column :projects, :link, :string
    add_column :projects, :git_repo, :string
  end
end
