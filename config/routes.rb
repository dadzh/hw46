Rails.application.routes.draw do
  devise_for :users

  scope ":locale", locale: /#{I18n.available_locales.join("|")}/ do
    root 'products#index'
    resources :products
    resources :categories
    namespace :admin do
      root 'products#index'
      resources :products
      resources :categories
    end
  end
  match '*path', to: redirect("/#{I18n.default_locale}/%{path}"), via: [:get,:post]
  match '', to: redirect("/#{I18n.default_locale}"), via: [:get,:post]
end
