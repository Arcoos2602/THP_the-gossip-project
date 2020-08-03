Rails.application.routes.draw do
  get '/team', to: 'team#index'
  get '/contact', to: 'contact#index'
  get '/home', to: 'home#index'
  get '/gossip/:gossip_id', to: 'gossip#index', :as => :gossip
  get '/gossip/author/:author_id', to: 'author#index', :as => :author
  get '/welcome/:first_name', to: 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
