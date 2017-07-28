Rails.application.routes.draw do


  resources :add_time_to_appointments

  resources :sessions
  resources :meetings
  resources :appointments

  resources :user
  root 'sessions#new'
  # get '/login' => 'home#login'
  # post '/login' => 'appointments#index'
  # get '/logout' => 'home#destroy'
    get '/index' => 'appointments#index'
    # get    '/help'   => 'https://walterbondcoaching.com'
    get    '/signup' => 'appointments#new'
    get    '/login' => 'sessions#new'
    post   '/login' => 'sessions#create'
    delete '/logout' => 'sessions#destroy'
    get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

# GET '/abc' do
#   /app/views/meetings/_form
# end
