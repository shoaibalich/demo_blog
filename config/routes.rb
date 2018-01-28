Rails.application.routes.draw do
  devise_for :dealers, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :dealers do
  	resources :cars
  end
end
