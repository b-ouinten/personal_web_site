class ProjectsController < ApplicationController
  def index
    tag_ids = params[:tag_ids]
    if tag_ids
      @projects = Project.joins(:taggings).where(taggings: {tag_id: tag_ids}).distinct.order(:created_at, complexity: :desc)
    else
      @projects = Project.order(:created_at, complexity: :desc)
    end
    @tags = Tag.order(:order)
  end
end
