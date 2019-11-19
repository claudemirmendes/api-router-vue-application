Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :private do
    match 'users/index', to: 'users#index', via: [:get, :options]
  end
  namespace :public do
    match 'users/login', to: 'users#login', via: [:post, :options]
  end
end
