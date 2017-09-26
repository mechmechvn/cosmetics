Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lipsticks', to: 'lipsticks#index'
  get 'lipsticks/new', to: 'lipsticks#new', as: 'new_lipstick'
  post 'lipsticks', to: 'lipsticks#create'
  get 'lipsticks/:id', to: 'lipsticks#show', as: 'lipstick'
  get 'lipsticks/:id/edit', to: 'lipsticks#edit', as: 'edit_lipstick'
  put 'lipsticks/:id', to: 'lipsticks#update'
  patch 'lipsticks/:id', to: 'lipsticks#update'
  delete 'lipsticks/:id', to: 'lipsticks#destroy'
end
