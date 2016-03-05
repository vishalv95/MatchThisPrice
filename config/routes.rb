Rails.application.routes.draw do
  resources :invoices
  resources :invoice_forms
  resources :invoice_forms
  devise_for :companies
  devise_for :users

  resources :messages do 
    resources :comments
    resources :responses
  end
  root 'messages#index'
end
