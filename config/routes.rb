Rails.application.routes.draw do
  root 'projects#index'
  resources :projects, only: :index

  get '/projects/:id/rendering', to: 'projects#show_rendering', as: 'project_rendering'
  get '/projects/:id/repo', to: 'projects#show_repo', as: 'project_repo'
  get '/pdfs/download_my_resume', to: 'pdfs#download_my_resume', as: 'download_my_resume'
end
