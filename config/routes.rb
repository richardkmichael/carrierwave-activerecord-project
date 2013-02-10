CarrierwaveActiverecordProject::Application.routes.draw do
  root :to => 'articles#new'

  resources :articles do
    resources :article_files do
      member { get 'file' }
    end
  end
end
