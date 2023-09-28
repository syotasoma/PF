Rails.application.routes.draw do
 
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :customer do
      post 'customers/guest_sign_in', to: 'public/sessions#guest_sign_in'
  end #ゲストログイン機能
  scope module: :public do
  
  root to: "homes#top"
  get "/about" => "homes#about"
  get "/about2" => "homes#about2"
  get "customers/mypage" => "customers#show"
  get "customers/mypage/edit" => "customers#edit"
  patch "/withdrawal" => "customers#withdrawal"
  resources :menus, only: [:index, :show, :edit, :new, :create, :update, :destroy] do 
   resource :nice, only: [:create, :destroy]
   resources :comments, only: [:create, :destroy]
  end
  resources :nices, only: [:index]
  resources :searchs, only: [:index]
  resources :customers, only: [:show, :edit, :update]
  resources :genres, only: [:show]
  end
  namespace :admin do
  root to: "homes#top"
  resources :menus, only: [:index, :show, :destroy] do
   resources :comment, only: [:destroy]
 end
  resources :customers, only: [:index, :show, :edit, :update]
  resources :genre, only: [:index, :create, :edit, :update, :destroy]
  end
end
