class ProjectsController < ApplicationController
  def index
    tag_ids = params[:tag_ids]
    if tag_ids
      @projects = Project.joins(:taggings).where(taggings: {tag_id: tag_ids}).distinct.order(complexity: :desc, created_at: :asc)
    else
      @projects = Project.order(complexity: :desc, created_at: :asc)
    end
    @tags = Tag.order(:order)
  end
end
