Rails.application.routes.draw do
  root to: "books#index"
  resources :courses
end
