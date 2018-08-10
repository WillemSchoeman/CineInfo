Rails.application.routes.draw do
  root 'home#index'
  get 'home/about'
  get 'home/popular'
  get 'home/top_rated'
  get 'home/now_showing'
  get 'home/upcoming'
  get 'home/details'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
