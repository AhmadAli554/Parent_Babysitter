Rails.application.routes.draw do
  resources :jobs
  root to: 'welcome#homepage'
  resources :sitters
  resources :parents
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
