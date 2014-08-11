Rails.application.routes.draw do
  root "home#index"

  get 'about' => "home#show"

  resources :gifs
end
