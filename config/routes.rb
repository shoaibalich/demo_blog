Rails.application.routes.draw do
  devise_for :dealers, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'dealers/:dealer_id/leads', :to => 'leads#all', as: :all_leads

  resources :dealers do
  	resources :cars do
  		resources :leads
  	end
  end

end
