Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  	root to: 'user_signup#index'
	post '/sign_up' => 'user_signup#sign_up'
	get '/welcome_page' => 'user_signup#welcome_page'
	get '/:token/confirm_email/', :to => "user_signup#confirm_email", as: 'confirm_email'
	get '/sign_in' => 'user_signup#sign_in'
	get '/sign_out' => 'user_signup#sign_out'
	resources :user_signup
end
