Rails.application.routes.draw do
  get 'projects/dashboard'

  get 'projects/new'

  get 'projects/dashboard/:filter_by', to: "projects#dashboard", as: "list_filtered"

  post '/projects', to: 'projects#create'

  root 'projects#dashboard'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
