Rails.application.routes.draw do
  resources :emp_apps
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
root "emp_apps#index"
end

