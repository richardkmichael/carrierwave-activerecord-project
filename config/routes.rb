CarrierwaveActiverecordProject::Application.routes.draw do
  root :to => 'articles#new'

  resources :articles do
    member { get 'file' }
  end
end
