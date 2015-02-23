Rails.application.routes.draw do

  resources :birds, only: [:index, :show, :new, :create, :edit]

end
