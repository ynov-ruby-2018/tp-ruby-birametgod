Rails.application.routes.draw do
  mount LikeDislike::Engine, at: '/' # WTF ?! Vous avez vraiment fait une Gem derrière ça ??!
  
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :contents

  root to: "contents#index"
end
