class ProjectsController < ApplicationController
  def index
    @tags = Tag.order(:order)
    @projects = Project.all
  end
end
