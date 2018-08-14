Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/about'
  get 'home/popular'
  get 'home/top_rated'
  get 'home/now_showing'
  get 'home/upcoming'
  get 'home/details'
  get 'home/tv_details'
  get 'home/tv_popular'
  get 'home/tv_top_rated'
  get 'home/tv_showing'
  get 'home/tv_today'
  get 'home/search'
  post '/home/search' => 'home/search'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
