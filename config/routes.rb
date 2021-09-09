Rails.application.routes.draw do
  resources :birds, only: [:index, :show, :create, :update] do
    resources :likes, only: [:update], module: :birds
  end
  # patch "/birds/:id/like", to: "birds#increment_likes"
end
