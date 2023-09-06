Rails.application.routes.draw do
 
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }
  devise_scope :customer do
      post 'customers/guest_sign_in', to: 'public/sessions#new_guest'
  end #ゲストログイン機能
  scope module: :public do
  
  root to: "homes#top"
  get "/about" => "homes#about"
  get "/about2" => "homes#about2"
  get "customers/mypage" => "customers#show"
  get "customers/mypage/edit" => "customers#edit"
  patch "/withdrawal" => "customers#withdrawal"
  resources :menu, only: [:index, :show, :edit, :new, :create, :update, :destroy]
  resources :searchs, only: [:index]
  resources :comment, only: [:create, :update]
  resources :nice, only: [:create, :destroy, :index]
  resources :customers, only: [:show, :edit, :update]
  end
  namespace :admin do
  root to: "homes#top"
  resources :menu, only: [:index, :show, :destroy, :edit, :update]
  resources :comment, only: [:destroy]
  resources :customers, only: [:index, :show, :edit, :update]
  resources :genre, only: [:index, :create, :edit, :update, :destroy]
  end
end