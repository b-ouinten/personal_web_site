class ProjectsController < ApplicationController
  def index
    @tags = Tag.all
    puts '-' * 60
    puts params
    puts '-' * 60
  end
end
