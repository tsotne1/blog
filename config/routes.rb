Rails.application.routes.draw do
root 'home#hpg'
get 'about/abpg', to: 'about#abpg'

resources :articles
end
