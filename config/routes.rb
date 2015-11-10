Rails.application.routes.draw do
  resources :people, param: :public_id

  root 'people#new'
end
