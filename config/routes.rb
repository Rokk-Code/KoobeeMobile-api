Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :groups

  namespace :api, {format: 'json'} do
    namespace :v1 do
      namespace :groups do
        get "/" , :action => "index"
      end
    end
  end

end
