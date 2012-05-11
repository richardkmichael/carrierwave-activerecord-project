CarrierwaveActiverecordProject::Application.routes.draw do
  resources :articles do
    member do
      get '/file/:filename' => 'article_files#show', :format => :false,
                                                     :filename => /[^\/]*/
    end
  end
end
