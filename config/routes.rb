Rails.application.routes.draw do
  root                'static_pages#home'
  get    'help'    => 'static_pages#help'
  get    'about'   => 'static_pages#about'
  get    'contact' => 'static_pages#contact'
  get    'signup'  => 'users#new'
  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  get    'show'    => 'users#show'
  delete 'logout'  => 'sessions#destroy'
   # 出勤画面表示・編集
  get  '/attendance_update', to: 'attendances#attendance_update'
  post '/attendance_update', to: 'attendances#attendance_update'
  patch '/attendance_update', to: 'attendances#attendance_update'
  
  get  '/attendance_edit', to: 'attendances#attendance_edit'
  post '/attendance_edit', to: 'attendances#attendance_edit'
  patch '/attendance_edit', to: 'attendances#attendance_edit'
  
  get    '/basic_info',    to: 'users#basic_info'
  post   '/basic_info',    to: 'users#basic_info'
  
  

  resources :users do
    member do
      get :following, :followers
    end
  end
  

  
  resources :basic_infos
  
  resources :account_activations, only: [:edit]
  resources :password_resets,     only: [:new, :create, :edit, :update]
  resources :microposts,          only: [:create, :destroy]
  resources :relationships,       only: [:create, :destroy]
  resources :users
end
