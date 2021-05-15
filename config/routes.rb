Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'projects#index'
  resources :projects, only: :index

  get '/projects/:id/show_rendering', to: "projects#show_rendering", as: 'project_rendering'
  get '/projects/:id/show_repo', to: "projects#show_repo", as: 'project_repo'
end
