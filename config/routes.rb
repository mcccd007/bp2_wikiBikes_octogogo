Rails.application.routes.draw do

# messing with (west coast custom) routes with cha boy Xzibit
  match('bicycles/:id',  {:via => :post, :to => 'bicycles#show'} )
  match('tags/new', {:via => :post, :to => 'tags#new' } )
  match('tags/:id', {:via => :post, :to => 'tags#show' } )


  root "bicycles#index"
    resources :tags

  resources :bicycles do
    member do
      post 'set_tags', to: 'bicycles#set_tags', as: 'set_tags'
    end
  end

end
