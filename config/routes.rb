Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'lipsticks', to: 'lipsticks#index'
  get 'lipsticks/new', to: 'lipsticks#new', as: 'new_lipstick'
  post 'lipsticks', to: 'lipsticks#create'
end
