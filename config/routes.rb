Rails.application.routes.draw do
  resources :restaurants # SAME AS 7 ROUTES BELOW

  # # CREATE
  # get 'restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # post 'restaurants', to: 'restaurants#create'

  # # READ (ALL / ONE)
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'

  # # UPDATE
  # get 'restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # patch 'restaurants/:id', to: 'restaurants#update'

  # # DELETE
  # delete 'restaurants/:id', to: 'restaurants#destroy'
end
