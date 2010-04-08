ActionController::Routing::Routes.draw do |map|
  map.resources :gallery_assets

  map.resources :assets

  map.resources :galleries

  map.namespace(:admin) do |admin|
    admin.root :controller => 'galleries', :action => 'index'
    admin.resources :galleries
  end

  map.root :controller => 'galleries', :action => 'index'

  map.resources :user_sessions
  map.resources :users
  map.login "login", :controller => "user_sessions", :action => "new"
  map.logout "logout", :controller => "user_sessions", :action => "destroy"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end

