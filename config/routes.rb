Rails.application.routes.draw do
  resources :relations do
    resources :attrs
  end
end
