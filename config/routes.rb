Greggit::Application.routes.draw do

  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }

  root 'static#index'

end
