Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'application#index', format: 'json'

  namespace :v1 do
    resource :apps
  end

end