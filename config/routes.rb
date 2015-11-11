Rails.application.routes.draw do
  with_options param: :public_id do |route|
    route.resources :people
    route.resources :orders

    route.resources :car do
      route.resources :logbooks
    end
  end

  root 'people#new'
end
