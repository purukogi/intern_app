Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'static_pages#top'
  get 'static_pages/show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
