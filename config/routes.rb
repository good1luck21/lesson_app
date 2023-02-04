Rails.application.routes.draw do
  root 'posts#index'
  post 'posts' => 'posts#create', as: 'posts_create'
  get 'posts/:kang/edit' => 'posts#edit',as: 'posts_edit'
  patch 'posts/:sato/edit'=> 'posts#update',as:'posts_update'
  get 'signup' => 'users#new', as: 'signup'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
