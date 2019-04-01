Rails.application.routes.draw do
  resources :test, only: :index
  resources :test_locale, only: :index
end
