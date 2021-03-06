Rails.application.routes.draw do
  devise_for :dealers, :controllers => { registrations: 'registrations'}
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  get 'dealers/:dealer_id/leads', :to => 'leads#all', as: :all_leads

  get 'dealers/:dealer_id/tasks', :to => 'tasks#all', as: :all_tasks

  get 'dealers/:dealer_id/tasks/new', :to => 'tasks#new_universal_task', as: :new_universal_task

  post 'dealers/:dealer_id/tasks/new', :to => 'tasks#create_universal_task', as: :create_universal_task

  resources :dealers do
  	resources :cars do
  		resources :leads do
  			resources :tasks
  		end
  	end
  end

end
