Rails.application.routes.draw do
  resource :profile, only: %i{show edit update}

  get "books/:id" => "books#show"
  resources :publishers
end
