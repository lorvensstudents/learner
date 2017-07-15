Rails.application.routes.draw do
  resources :learners
  get 'logic/think'

  get 'logic/good'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
