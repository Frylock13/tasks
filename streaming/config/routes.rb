Rails.application.routes.draw do

  devise_for :users

  resource :streams, only: [:index, :create] do
    get 'stream', action: :stream, as: :my_stream
    get ':token', action: :watch, as: :watch
  end

  root 'streams#index'
end
