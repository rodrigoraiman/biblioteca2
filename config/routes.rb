Rails.application.routes.draw do
  get '/bibliotecas', to: 'bibliotecas#index'
  get '/bibliotecas/new', to: 'bibliotecas#new'
  post '/bibliotecas', to: 'bibliotecas#create'
  get 'biblioteca/:id', to: 'bibliotecas#show', as: 'biblioteca'
  get '/bibliotecas/:id/edit', to: 'bibliotecas#edit', as: 'edit_biblioteca'
  patch '/biblioteca/:id', to: 'bibliotecas#update'
  put '/biblioteca/:id', to: 'bibliotecas#update'
  delete '/biblioteca/:id', to: 'bibliotecas#delete'
  #resources :bibliotecas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
