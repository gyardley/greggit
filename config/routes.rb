Greggit::Application.routes.draw do

  root 'static#index'

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_user_session
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_user_session
  end

end
