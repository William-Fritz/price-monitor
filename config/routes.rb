Rails.application.routes.draw do
  resources :products, only: [:index, :show, :new, :create] do
    match '/scrape', to 'products#scrape', via: :post,
      on: :collection
  end

  root to: 'products#new'
end
