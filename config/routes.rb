Blog::Application.routes.draw do
  post 'login' => "sessions#create"

  resources :users do
    resources :posts
  end

  resources :students
  resources :cows
  post "foobar" => "users#create"

  get "popular" => "popular_memes#index"

  # /users/new
  # /signup
  get "signup" => "users#new"
end
