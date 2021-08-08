class ProjectsController < ApplicationController
  before_action :get_project, only: [:show_rendering, :show_repo]
  
  def index
    tag_ids = params[:tag_ids]
    if not tag_ids.nil?     # AJAX request, see filter.js file
      @projects = Project.joins(:taggings).where(taggings: {tag_id: tag_ids}).distinct.order(complexity: :desc, created_at: :asc)
      @selected_tags = tag_ids.map { Tag.find(_1) }
    else
      @projects = Project.order(complexity: :desc, created_at: :asc)
    end

    @tags = Tag.order(:order)
    
    @comment = Comment.new
    @comment_categories = CommentCategory.all
    @comments = Comment.all
  end

  def show_rendering
    redirect_to @project.link
  end
  
  def show_repo
    redirect_to @project.git_repo
  end

  private
  
  def get_project
    @project = Project.friendly.find(params[:id])
  end
end
