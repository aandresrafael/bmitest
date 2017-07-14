Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"
  match 'calculate_bmi', to: 'home#calculate_bmi', via: [:get, :post]
end
