Rails.application.routes.draw do
  root 'pages#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users, path: '', controllers: { registrations: :registrations,
                                    passwords: :passwords,
                                    sessions: :sessions,
                                    confirmations: :confirmations,
                                    unlocks: :unlocks }

  get 'welcome/index'

  resources :articles do
    resources :comments
  end

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?
end
