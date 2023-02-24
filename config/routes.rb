Rails.application.routes.draw do
  get 'sessions/new'
  root 'posts#index'
  post 'posts' => 'posts#create', as: 'posts_create'
  get 'posts/:kang/edit' => 'posts#edit',as: 'posts_edit'
  patch 'posts/:sato/edit'=> 'posts#update',as:'posts_update'
  get 'signup' => 'users#new', as: 'signup'
  get 'users' => 'users#index'
  post 'users/create' => 'users#create'
  get 'signin' => 'sessions#new', as: 'signin'
  post 'signin' => 'sessions#create', as: 'login'
  delete 'logout' => 'sessions#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
