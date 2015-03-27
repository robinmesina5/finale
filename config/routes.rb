Rails.application.routes.draw do
  resources :tree_roles

  resources :family_trees, :only => [:index, :show, :create, :update, :destroy]

  resources :relatives

  resources :users

  resources :sessions

  root :to => 'sessions#new'

  end
