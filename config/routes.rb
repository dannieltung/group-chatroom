Rails.application.routes.draw do
  devise_for :users
  resources :chatrooms do
    resource :chatroom_users
    # singular pois é um controller para o current user especifico(pesquisar a respeito).
    # ele esta nestado mas oq ele faz é apenas join e leaving (create and delete).
  end

  root to: 'chatrooms#index'
end
