class ProjectsController < ApplicationController
  def index
    tag_ids = params[:tag_ids]
    if not tag_ids.nil?     # AJAX request, see filter.js file
      @projects = Project.joins(:taggings).where(taggings: {tag_id: tag_ids}).distinct.order(complexity: :desc, created_at: :asc)
      @selected_tags = tag_ids.map { Tag.find(_1) }
    else
      @projects = Project.order(complexity: :desc, created_at: :asc)
    end

    @tags = Tag.order(:order)
  end
end
