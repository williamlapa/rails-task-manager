Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'

  # # As a user, I can create a restaurant
  get '/tasks/new', to: 'tasks#new', as: :new_task # render the form
  post '/tasks', to: 'tasks#create'

  # # As a user, I can edit a restaurant
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task # mostrar o form pro usario
  patch '/tasks/:id', to: 'tasks#update'

  # As a user, I can delete a restaurant
  delete 'tasks/:id', to: 'tasks#destroy', as: :apagar

  get '/tasks/:id', to: 'tasks#show', as: :task
end
