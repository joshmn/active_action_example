Rails.application.routes.draw do
  resources :notifications do
    collection do
      post :mark_as_read
      post :mark_as_unread
    end

  end
end
