Rails.application.routes.draw do
  mount LikeDislike::Engine, at: '/'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :contents

  root to: "contents#index"
end
