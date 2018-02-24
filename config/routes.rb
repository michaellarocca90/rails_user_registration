Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'users#load_registration'
  get '/retry_registration' => 'users#load_registration'
  get '/new_registration' => 'users#load_registration'
  post 'user_registration/' => 'users#create_user'
  get '/log_in' => 'users#log_in'
  get '/register_confirmation' => 'users#render_register'
  get '/log_in_submit' => 'users#log_in_result'
end
