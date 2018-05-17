Rails.application.routes.draw do


  devise_for :authors
  root to: 'blog/_posts#index'

  # /author/posts
  namespace :authors do
  	# Defining all the possible routes that matches controller actions in 
  	# the post controllers
  	resources :posts  	
  end

  # rootpath/posts
  scope module: 'blog' do 
  	# => == points the about resource to...
  	get 'about' => 'pages#about', as: :about
  	get 'contact' => 'pages#contact', as: :contact
  	get 'posts' => 'post#index', as: :posts  	
  	get 'posts/:id' => 'posts#show', as: :post
  end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
