Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # read As a user, I can list tasks
  get '/tasks', to: 'tasks#index'
  get '/tasks/new', to: 'tasks#new', as: 'new_task'

  # As a user, I can view the details of a task
  get '/tasks/:id', to: 'tasks#show', as: :task
  post '/tasks', to: 'tasks#create'
  # create As a user, I can add a new task
  # update As a user, I can edit a task (mark as completed / update title & details)
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'
  # delete As a user, I can remove a task
  delete '/tasks/:id', to: 'tasks#destroy'

end
