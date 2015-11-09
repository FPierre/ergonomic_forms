Rails.application.routes.draw do
  resource :people

  root 'people#new'
end
