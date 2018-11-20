Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # read all tasks
  get 'tasks', to: 'tasks#index'
  # create one task
  get 'tasks/new', to: 'tasks#new', as: 'new'
  post 'tasks', to: 'tasks#create'
  # read one task
  get 'tasks/:id', to: 'tasks#show', as: 'task'
  # edit one task
  get 'tasks/:id/edit', to: 'tasks#edit', as: 'edit'
  patch 'tasks/:id', to: 'tasks#update', as: 'update'
  # delete one task
  delete 'tasks/:id', to: 'tasks#destroy', as: "delete"
  # mark task as done
  get 'tasks/:id/mark_as_done', to: 'tasks#mark_as_done', as: "done"
end
