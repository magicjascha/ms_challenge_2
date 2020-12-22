Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # static pages
  get "/privacy", to: "static_pages#privacy"
  get "/out-story", to: "static_pages#first_static_page"

  resources :recipes, only: [:index]
end
