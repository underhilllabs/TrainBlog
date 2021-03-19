# frozen_string_literal: true

Rails.application.routes.draw do
  resources :images
  resources :games
  resources :posts
  resources :player_profiles
  resources :session_reports do
    resources :comments
  end
  resources :comments do
    resources :comments
  end
  devise_for :users

  get 'player/:id' => 'players#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
