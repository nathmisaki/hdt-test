Rails.application.routes.draw do
  root to: 'home#index'
  get 'home/search', to: 'home#specific_search'
end
