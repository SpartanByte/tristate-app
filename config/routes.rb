Rails.application.routes.draw do
  devise_for :users

  root to: "pages#index"
  resource :pages
  get "front_end_testing", to: "pages#front_end_testing", as: "front_end_testing"
end
