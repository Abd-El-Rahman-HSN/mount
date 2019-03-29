Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  devise_for :admins, controllers: {
    sessions: 'admins/sessions'
  }

  root 'mount/mounts#index'
  namespace :mount, path: '/' do

  end

  namespace :admin do
    get '/', to: 'dashboard#index'
    
    resources :posts
    resources :categories
    resources :admins
  end
end
