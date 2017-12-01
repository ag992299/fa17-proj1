Rails.application.routes.draw do
  devise_for :trainers
  root to: "home#index"
  get 'pokemon/capture' => 'pokemon#capture', as: :capture
end
