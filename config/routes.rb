Rails.application.routes.draw do
  # resources :contacts
  get 'contacts/new', to: 'contacts#new'
  post 'contacts', to: 'contacts#create'
  get 'contacts/:id', to: 'contacts#show'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'hotels#index'
  resources :hotels
  get 'hotels/:id/reviews/new', to: 'reviews#new'
	post 'hotels/:id/reviews', to: 'reviews#create'
	get 'hotels/:id/reviews/:id', to: 'reviews#show'
	get 'hotels/:id/reviews', to: 'reviews#index'
end
