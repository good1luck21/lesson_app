Rails.application.routes.draw do
  root 'posts#index'
  post 'posts' => 'posts#create', as: 'posts_create'
  get 'edit' => 'posts#edit'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
