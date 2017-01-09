Rails.application.routes.draw do

	authenticate :user do
  		get 'posts/guide'
  		get 'posts/faq'
  		get 'posts/contact'
  		get 'posts/postlist'
  		get '/posts' => 'posts#postlist'
	end

	root 'posts#index'
	resources :posts
	devise_for :users
	#match '/faq' => 'posts#faq', :as => :faq

end
