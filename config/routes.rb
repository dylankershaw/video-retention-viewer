Rails.application.routes.draw do
  resources :videos, only: :show
end
