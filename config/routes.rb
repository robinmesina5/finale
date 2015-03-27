Rails.application.routes.draw do

  resources :family_trees, :only => [:index, :show, :create, :update, :destroy]

  # resources :relatives

  # resources :tree_roles

  resources :users

  resources :sessions

  root :to => 'sessions#new' 

  end
