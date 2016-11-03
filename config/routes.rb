Rails.application.routes.draw do
  resources :contacts do
    resources :messages
  end

  root 'contacts#index'
end
