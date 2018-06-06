Rails.application.routes.draw do
  resources :missions
  devise_for :benevoles
  devise_for :assos

  root to: 'mission#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
