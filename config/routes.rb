Rails.application.routes.draw do
  resources :apartments do
    collection do
      post :confirm
    end
  end
end
