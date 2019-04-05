Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions',
    registrations: 'admins/registrations'
  }

  root 'mount/mounts#index'
  namespace :mount, path: '/' do

    resources :posts do 
     member do 
        get "like" => "posts#like" , as: :like
        get "dislike", to: "posts#dislike", as: :dislike
     end
    end

  end

  namespace :admin do
    get '/', to: 'dashboard#index'
    
    resources :posts
    resources :categories
    resources :admins
  end
end
