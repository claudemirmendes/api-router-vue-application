Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :private do
    # USERS
    match 'users/index', to: 'users#index', via: [:get, :options]
    # EVENTS
    match 'events/create', to: 'events#create', via: [:post, :options]
    match 'events/update/:id', to: 'events#update', via: [:put, :options]
    #PATIENTS
    match 'patients/create', to: 'patients#create', via: [:post, :options]
    match 'patients/update/:id', to: 'patients#update', via: [:put,:options] 
  end
  namespace :public do
    match 'users/login', to: 'users#login', via: [:post, :options]
  end
end
