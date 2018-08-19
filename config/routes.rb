# frozen_string_literal: true

Rails.application.routes.draw do
  root 'home#index'
  devise_for :users
  get'/events', to: 'events#show', as: 'events'
  get'/details', to: 'home#show', as: 'details'
  resources :events, only: %i[create new destroy] do
    resources :questions, only: %i[create] do
      resources :answers, only: %i[create destroy update]
    end
  end
  resources :response, only: [:create]
  # For details on the DSL  available within this file, see http://guides.rubyonrails.org/routing.html
end
