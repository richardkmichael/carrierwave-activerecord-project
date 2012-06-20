CarrierwaveActiverecordProject::Application.routes.draw do
  root :to => 'articles#new'

  resources :articles do
    # # Model has a directly mounted uploader.
    # member do
    #   get '/file/:filename' => 'article_files#show', :format => :false,
    #                                                  :filename => /[^\/]*/
    # end
  end

  # Model has_many uploaded files, each as a model with an uploader.
  get '/articlefiles/:id/file/:filename' => 'article_files#show', :format => :false

end
