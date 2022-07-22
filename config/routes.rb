Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :pokemon
  resources :battle do
    resources :battlemon do
      member do
        put :attack
      end
    end
  end
end
