CarrierwaveActiverecordProject::Application.routes.draw do
  root :to => 'articles#new'

  resources :articles

  # Model has_many uploaded files, each as a model with an uploader.
  get '/files/:identifier' => 'carrier_wave_files#show'#, :format => :false

end
