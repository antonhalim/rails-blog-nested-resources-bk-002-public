RailsBlog::Application.routes.draw do

  resources :users
  resources :tags
  resources :posts do
    resources :comments, only: :create
  end

end
